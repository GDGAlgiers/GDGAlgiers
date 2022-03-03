import 'package:flutter/material.dart';

class ExpandedFlexibleExample extends StatelessWidget {
  const ExpandedFlexibleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ////Expanded takes as much available space
          ///Flexible default takes only the space that it's child need, if we put flexfit.tight it stats acting like expanded
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
              child: Container(
            color: Colors.orange,
          )),
          Flexible(
              child: Container(
            color: Colors.green,
          )),
        ],
      ),
    );
  }
}
