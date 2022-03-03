import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;
    var padding = MediaQuery.of(context).padding;
    return SafeArea(
      //do the error on purpose
      //always use size with substraction of top padding (status bar padding)
      ///viewPadding remembers old padding when keyboard shows but padding doesn't
      /////viewinsets.bottom gives u the height of keyboard that's showing
      child: GestureDetector(
        onTap: () {
          print(size.height);
          print(size.width);
          print(orientation);
          print(padding.top);
        },
        child: Column(
          children: [
            Container(
              color: Colors.green,
              height: orientation == Orientation.landscape
                  ? size.height / 4
                  : size.height,
              width: size.width / 3,
            ),
          ],
        ),
      ),
    );
  }
}
