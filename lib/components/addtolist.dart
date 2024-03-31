import 'package:flutter/material.dart';

class AddToListButton extends StatefulWidget {
  @override
  _AddToListButtonState createState() => _AddToListButtonState();
}

class _AddToListButtonState extends State<AddToListButton> {
  bool isAddedToList = false;
  String buttonText = 'Add to the list';

  void handleButtonPress() {
    setState(() {
      if (!isAddedToList) {
        buttonText = 'Added to the list';
        isAddedToList = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ElevatedButton(
        onPressed: () {
          handleButtonPress();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF25292C), // Change button color to 25292C
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // Change edge radius to 15
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
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
