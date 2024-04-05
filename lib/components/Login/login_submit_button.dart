import 'package:flutter/material.dart';

class LoginSubmitButton extends StatelessWidget {
  const LoginSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFB5CF5B),
      ),
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: const Center(
        child: Text(
          'Submit',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class LoginBelowText extends StatelessWidget {
  final String preText;
  final String route;
  final String lORr;
  const LoginBelowText({
    super.key,
    required this.preText,
    required this.route,
    required this.lORr,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(preText),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, route),
          child: Text(
            lORr,
            style: TextStyle(
              color: Colors.blue[700],
            ),
          ),
        )
      ],
    );
  }
}
