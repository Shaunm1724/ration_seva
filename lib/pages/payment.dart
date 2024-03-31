import 'package:flutter/material.dart';
import 'package:ration_seva/components/changecolour.dart';

import '../components/items.dart';
import '../components/navbar.dart';
import '../components/selectpayment.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
              child: PaymentButton(),
            ), // Use ExpandableButton widget

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              child: CustomButton(title: 'Proceed', route: '/notifications'),
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
                  // Use addtolist widget
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
                        'Your List',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  item_block(
                    imagePath: 'images/Madhubani Saree.webp',
                    block_route: '/item_description',
                    block_title: 'item1',
                    block_description: 'description',
                    block_price: 'Rs.400',
                  ),
                  item_block(
                    imagePath: 'images/Madhubani Saree.webp',
                    block_route: '/item_description',
                    block_title: 'item1',
                    block_description: 'description',
                    block_price: 'Rs.400',
                  ),
                  item_block(
                    imagePath: 'images/Madhubani Saree.webp',
                    block_route: '/item_description',
                    block_title: 'item1',
                    block_description: 'description',
                    block_price: 'Rs.400',
                  ),
                  item_block(
                    imagePath: 'images/Madhubani Saree.webp',
                    block_route: '/item_description',
                    block_title: 'item1',
                    block_description: 'description',
                    block_price: 'Rs.400',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
