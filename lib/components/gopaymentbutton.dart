import 'package:flutter/material.dart';

class ProceedToPaymentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String block_route;

  const ProceedToPaymentButton({
    super.key,
    required this.block_route,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, block_route),
      child: Container(
        height: 80,
        width: 350,
        margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
        decoration: BoxDecoration(
          color: Color(0xff25292C),
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
            'Proceed to payment',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xffB5CF5B),
            ),
          ),
        ),
      ),
    );
  }
}
