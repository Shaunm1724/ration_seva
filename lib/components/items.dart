import 'package:flutter/material.dart';

class item_block extends StatelessWidget {
  final String block_title,
      block_description,
      block_price,
      block_route,
      imagePath;

  const item_block(
      {super.key,
      required this.imagePath,
      required this.block_route,
      required this.block_title,
      required this.block_description,
      required this.block_price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, block_route),
      child: Container(
        height: 140,
        width: 60,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 8),
              blurRadius: 4,
              color: Color(0xffbdbdc1),
            ),
          ],
        ),
        child: Row(
          children: [
            Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 50.0),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                  ),

                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ), // Use Image.asset
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  block_title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  block_description,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  block_price,
                  style: TextStyle(fontSize: 12, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
