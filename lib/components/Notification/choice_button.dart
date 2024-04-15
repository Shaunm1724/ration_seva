// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

enum Choice { Active, Past }

class ActivePastButtn extends StatefulWidget {
  const ActivePastButtn({super.key});

  @override
  State<ActivePastButtn> createState() => _ActivePastButtnState();
}

class _ActivePastButtnState extends State<ActivePastButtn> {
  Choice choiceView = Choice.Active;

  String choice = 'active';
  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: [
        ButtonSegment(
          value: Choice.Active,
          label: Text('Active'),
        ),
        ButtonSegment(
          value: Choice.Past,
          label: Text('Past'),
        )
      ],
      selected: {choiceView},
      onSelectionChanged: (newChoiceView) {
        setState(() {
          choiceView = newChoiceView.first;
          if (choice == 'active') {
                choice = 'past';
              } else {
                choice = 'active';
              }
              print(choice);
        });
      },
    );
  }
}
