import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: LayoutBuilder(
              builder: (ctx, constraints) {
                return GestureDetector(
                  onTap: () {
                    print(constraints.minWidth.toString() + "minWidth");
                    print(constraints.maxWidth.toString() + "maxWidth");
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
