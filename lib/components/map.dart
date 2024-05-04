// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class MapPage extends StatelessWidget {
  final LatLng userLocation = LatLng(19.0814, 72.8891);

  Future<Position> _getCurrentLocation() async {
    bool servicePermission = false;
    servicePermission = await Geolocator.isLocationServiceEnabled();
    if (!servicePermission) {
      bool servicePermission = false;
      LocationPermission permission = await Geolocator.requestPermission();
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    Position? _currentLocation;
    String _currentAddress = "";

    return FutureBuilder(
      future: _getCurrentLocation(),
      builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Return a loading indicator while waiting for location data
          return Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            _currentLocation = snapshot.data;
            // Assign the user's current location to userLocation
            LatLng userLocation =
                LatLng(_currentLocation!.latitude, _currentLocation!.longitude);

            return Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                appBar: AppBar(
                  title: Center(
                    child: Text(
                      'Live Map',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        void _showLocationPopup(BuildContext context) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Location'),
                                content: SingleChildScrollView(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxHeight: MediaQuery.of(context)
                                              .size
                                              .height *
                                          0.21, // Adjust the height as needed
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Latitude: ${userLocation.latitude}'),
                                        Text(
                                            'Longitude: ${userLocation.longitude}'),
                                        SizedBox(height: 10),
                                        TextButton(
                                          onPressed: () {
                                            launchUrl(Uri.parse(
                                                'https://www.google.com/maps/search/?api=1&query=${userLocation.latitude},${userLocation.longitude}'));
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Share Live location'),
                                              Text(
                                                  'URL: https://www.google.com/maps/search/?api=1&query=${userLocation.latitude},${userLocation.longitude}'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }

                        _showLocationPopup(context);
                      },
                      icon: Icon(Icons.share_location),
                      tooltip: 'Share Location',
                    )
                  ],
                  backgroundColor: const Color(0xFF9BC1BC),
                ),
                body: FlutterMap(
                  options: MapOptions(
                    initialCenter: userLocation,
                    initialZoom: 17,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://api.mapbox.com/styles/v1/dwaynenixon/clv11sg31005f01pfebb7h3fb/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZHdheW5lbml4b24iLCJhIjoiY2x2MTB4cGZ4MDFxejJpbWljMmRjNjJsaiJ9.1uqtcqi94k0JfxGSmqzIbA',
                      additionalOptions: {
                        'accessToken':
                            'pk.eyJ1IjoiZHdheW5lbml4b24iLCJhIjoiY2x2MTB4cGZ4MDFxejJpbWljMmRjNjJsaiJ9.1uqtcqi94k0JfxGSmqzIbA',
                        'id': 'mapbox.mapbox-streets-v8',
                      },
                    ),
                    RichAttributionWidget(
                      attributions: [
                        TextSourceAttribution(
                          'OpenStreetMap contributors',
                          onTap: () => launchUrl(
                              Uri.parse('https://openstreetmap.org/copyright')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        }
      },
    );
  }
}
