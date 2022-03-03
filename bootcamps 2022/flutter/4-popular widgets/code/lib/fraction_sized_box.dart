import 'package:flutter/material.dart';

class ResponsivityExample extends StatelessWidget {
  const ResponsivityExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Container(
          height: 200,
          color: Colors.red,
          child: FractionallySizedBox(
            alignment: Alignment.center,
            heightFactor: 0.5,
            widthFactor: 0.2,
            child: Container(
              color: Colors.orange,
            ),
          ),
        ),
      ]),
    );
  }
}
