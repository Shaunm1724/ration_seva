import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final String route;

  const CustomButton({Key? key, required this.title, required this.route})
      : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color buttonColor = Color(0xFFFFFFFF);
  Color textColor = Colors.black;

  void changeColor() {
    setState(() {
      buttonColor = Color(0xFF25292C);
      textColor = Color(0xFFB5CF5B);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        changeColor();
        Future.delayed(Duration(milliseconds: 200), () {
          Navigator.pushNamed(context, widget.route);
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        foregroundColor: MaterialStateProperty.all<Color>(textColor),
        elevation: MaterialStateProperty.all<double>(4.0), // Add elevation
        shadowColor: MaterialStateProperty.all<Color>(
            Color(0xffbdbdc1)), // Add shadow color
      ),
      child: Text(widget.title),
    );
  }
}
