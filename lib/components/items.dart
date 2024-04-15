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

class Rice extends StatelessWidget {
  const Rice({super.key});

  @override
  Widget build(BuildContext context) {
    return const item_block(
      imagePath: 'images/Madhubani Saree.webp',
      block_route: '/item_description',
      block_title: 'Rice',
      block_description: 'A versatile staple',
      block_price: 'Rs.20',
    );
  }
}

class Wheat extends StatelessWidget {
  const Wheat({super.key});

  @override
  Widget build(BuildContext context) {
    return const item_block(
      imagePath: 'images/wheat.jpg',
      block_route: '/item_description1',
      block_title: 'Wheat Flour',
      block_description: 'Fundamental for chapatis',
      block_price: 'Rs.30',
    );
  }
}

class Salt extends StatelessWidget {
  const Salt({super.key});

  @override
  Widget build(BuildContext context) {
    return item_block(
      imagePath: 'images/table Salt .jpg',
      block_route: '/item_description2',
      block_title: 'Salt',
      block_description: 'Add seasoning to your food ',
      block_price: 'Rs.125',
    );
  }
}

class Sugar extends StatelessWidget {
  const Sugar({super.key});

  @override
  Widget build(BuildContext context) {
    return item_block(
      imagePath: 'images/sugar.jpg',
      block_route: '/item_description3',
      block_title: 'Sugar',
      block_description: 'Adding sweetness to food',
      block_price: 'Rs.150',
    );
  }
}
