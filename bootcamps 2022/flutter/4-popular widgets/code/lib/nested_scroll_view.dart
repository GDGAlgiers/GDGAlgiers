import 'package:flutter/material.dart';

class NestedExample extends StatelessWidget {
  const NestedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Documentation
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: NestedScrollView(
            headerSliverBuilder: (context, index) {
              return [
                const SliverAppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.home),
                        text: "Home",
                      ),
                      Tab(
                        icon: Icon(Icons.home),
                        text: "Home",
                      ),
                      Tab(
                        icon: Icon(Icons.home),
                        text: "Home",
                      ),
                    ],
                  ),
                )
              ];
            },
            body: TabBarView(
              children: [
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.white,
                ),
              ],
            )));
  }
}
