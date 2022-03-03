import 'package:flutter/material.dart';

class OrientationExample extends StatelessWidget {
  const OrientationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///difference between orientation builder and media query: media query gives u the device orientation
    ///orientation builder gives u the parent widget orientation: if width>height it considers it landscape else portrait
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              color: Colors.green,
              height: 200,
              width: 201,
              child: OrientationBuilder(
                builder: (ctx, orientation) {
                  return Text(orientation.toString());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
