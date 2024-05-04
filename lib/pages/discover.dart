// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:ration_seva/components/Common/navbar.dart';

import '../components/map.dart';
import 'shops.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      bottomNavigationBar: NavBar(
        currentPageIndex: 1,
      ),

      body: MapApp(),
      // Added the closing square bracket here
    );
  }
}

class MapApp extends StatefulWidget {
  const MapApp({Key? key});

  @override
  State<MapApp> createState() => _MapAppState();
}

class _MapAppState extends State<MapApp> {
  List<Marker> getMarkers() {
    return List<Marker>.from(Shops.locations.map(
      (e) => new Marker(
          width: 150.0,
          height: 150.0,
          point: LatLng(e.latitude, e.longitude),
          child: Icon(Icons.location_on, color: Colors.red, size: 40)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapPage(),
          Positioned(
            left: 20,
            right: 20,
            top: 20,
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    color: Color(0xffbdbdc1),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Discover Ration centres',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
