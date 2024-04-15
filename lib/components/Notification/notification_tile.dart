// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationTile extends StatefulWidget {
  final String date;
  final int amount;
  final String vendor;
  final String orderId;
  const NotificationTile({
    super.key,
    required this.date,
    required this.amount,
    required this.vendor,
    required this.orderId,
  });

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Color(0xFFB5CF5B),
          borderRadius: BorderRadius.circular(30),
        ),
        height: 100,
        child: Column(
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Vendor: '),
                Text(widget.vendor),
                SizedBox(width: 75),
                Text('Date: '),
                Text(widget.date)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Amount: '),
                Text('${widget.amount}'),
              ],
            ),
            GestureDetector(
              onTap: () {
                // MaterialPageRoute(builder: (context) => const QR(),);
                Navigator.pushNamed(context, '/qr${widget.orderId}');
              },
              child: Text('Click here for QR code'),
            ),
          ],
        ),
      );
  }
}
