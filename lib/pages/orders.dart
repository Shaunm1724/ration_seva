import 'package:flutter/material.dart';
import 'package:ration_seva/components/items.dart';
import 'package:ration_seva/components/navbar.dart';

import '../components/gopaymentbutton.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      bottomNavigationBar: NavBar(
        currentPageIndex: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: 350,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                  'Select the items you want...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            ProceedToPaymentButton(
              block_route: '/payments',
              onPressed: () {},
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: const [
                  Rice(),
                  Wheat(),
                  Salt(),
                  Sugar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
