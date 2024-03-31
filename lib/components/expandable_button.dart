import 'package:flutter/material.dart';

class ExpandableButton extends StatefulWidget {
  @override
  _ExpandableButtonState createState() => _ExpandableButtonState();
}

class _ExpandableButtonState extends State<ExpandableButton> {
  bool isExpanded = false;
  String mainButtonText = 'Select quantity';
  bool isHovered = false;

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
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHovered = false;
            });
          },
          child: ElevatedButton(
            onPressed: toggleExpand,
            child: Text(
              mainButtonText,
              style: TextStyle(
                color: isHovered
                    ? Colors.white
                    : Colors.black, // Change text color on hover
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                isHovered
                    ? Colors.blueAccent
                    : Color(0xFFFFFFFF), // Change background color on hover
              ),
              elevation: MaterialStateProperty.all<double>(4.0),
              shadowColor: MaterialStateProperty.all<Color>(Color(0xffbdbdc1)),
            ),
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
                      handleButtonPress('Quantity: 1');
                    },
                    child: Text('1'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleButtonPress('Quantity: 2');
                    },
                    child: Text('2'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleButtonPress('Quantity: 3');
                    },
                    child: Text('3'),
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
