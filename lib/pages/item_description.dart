import 'package:flutter/material.dart';
import 'package:ration_seva/components/addtolist.dart'; // Import the Addtolist widget
import 'package:ration_seva/components/expandable_button.dart'; // Import the ExpandableButton widget
import 'package:ration_seva/components/navbar.dart';

import '../components/descriptions.dart';
import '../components/items.dart';

class item_desc extends StatelessWidget {
  const item_desc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      bottomNavigationBar: NavBar(
        currentPageIndex: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: item_info(
                imagePath: 'images/Madhubani Saree.webp',
                block_title: 'Rice',
                block_description:
                    'A versatile staple known for its comforting texture and ability to complement a variety of dishes.',
                block_price: 'Rs.20',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: ExpandableButton(), // Use ExpandableButton widget
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: AddToListButton(),
                  ), // Use addtolist widget
                  Container(
                    height: 50,
                    width: 60,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 4,
                          color: Color(0xffbdbdc1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Similar Products',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Wheat(),
                  const Salt(),
                  const Sugar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class item_desc1 extends StatelessWidget {
  const item_desc1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      bottomNavigationBar: NavBar(
        currentPageIndex: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: item_info(
                imagePath: 'images/wheat.jpg',
                block_title: 'Wheat',
                block_description:
                    'A fundamental ingredient for bread, chapatis, and various baked goods.',
                block_price: 'Rs.30',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: ExpandableButton(), // Use ExpandableButton widget
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: AddToListButton(),
                  ), // Use addtolist widget
                  Container(
                    height: 50,
                    width: 60,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 4,
                          color: Color(0xffbdbdc1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Similar Products',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Rice(),
                  const Salt(),
                  const Sugar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class item_desc2 extends StatelessWidget {
  const item_desc2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      bottomNavigationBar: NavBar(
        currentPageIndex: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: item_info(
                imagePath: 'images/table Salt .jpg',
                block_title: 'Salt',
                block_description:
                    'A fundamental seasoning and prevervative ingredient',
                block_price: 'Rs.30',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: ExpandableButton(), // Use ExpandableButton widget
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: AddToListButton(),
                  ), // Use addtolist widget
                  Container(
                    height: 50,
                    width: 60,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 4,
                          color: Color(0xffbdbdc1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Similar Products',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Rice(),
                  const Wheat(),
                  const Sugar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class item_desc3 extends StatelessWidget {
  const item_desc3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      bottomNavigationBar: NavBar(
        currentPageIndex: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: item_info(
                imagePath: 'images/sugar.jpg',
                block_title: 'Sugar',
                block_description:
                    'Adding sweetness to beverages and desserts.',
                block_price: 'Rs.150',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: ExpandableButton(), // Use ExpandableButton widget
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                    child: AddToListButton(),
                  ), // Use addtolist widget
                  Container(
                    height: 50,
                    width: 60,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 4,
                          color: Color(0xffbdbdc1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Similar Products',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Rice(),
                  const Wheat(),
                  const Salt(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
