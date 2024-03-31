import 'package:flutter/material.dart';

class PaymentButton extends StatefulWidget {
  @override
  _PaymentButton createState() => _PaymentButton();
}

class _PaymentButton extends State<PaymentButton> {
  bool isExpanded = false;
  String mainButtonText = 'Select payment mode';
  Color buttonColor = Color(0xFFFFFFFF);
  Color textColor = Colors.black;

  void changeColor() {
    setState(() {
      buttonColor = Color(0xFF25292C);
      textColor = Color(0xFFB5CF5B);
    });
  }

  void toggleExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void handleButtonPress(String buttonText) {
    setState(() {
      mainButtonText = buttonText;
      isExpanded = false; // Minimize dropdown
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: toggleExpand,
          child: Text(mainButtonText),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            foregroundColor: MaterialStateProperty.all<Color>(textColor),
            elevation: MaterialStateProperty.all<double>(4.0), // Add elevation
            shadowColor: MaterialStateProperty.all<Color>(
                Color(0xffbdbdc1)), // Add shadow color
          ),
        ),
        AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          opacity: isExpanded ? 1.0 : 0.0,
          child: Visibility(
            visible: isExpanded,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Color(0xFFD9D9D9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      handleButtonPress('Selected payment mode:UPI');
                      changeColor();
                    },
                    child: Text('UPI'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleButtonPress('Selected payment mode: Net banking');
                    },
                    child: Text('Net Banking'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleButtonPress('Selected payment mode: Offline');
                    },
                    child: Text('Offline'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
