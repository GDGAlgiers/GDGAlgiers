import 'package:flutter/material.dart';

class SliversExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text("Maldive"),
          centerTitle: true,
          backgroundColor: Colors.orange.shade300,

          ///height for sliver app bar when it's fully expanded
          expandedHeight: 200,
          //option to keep appbar shown after scrolling or hidden
          pinned: true,
          //when u scroll back the sliverappbar appears directly
          floating: false,
          //widget that u can put inside ur sliverappbar which takes it's full height & width
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "https://images.unsplash.com/photo-1616523534740-6ebdf0cc1284?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80",
              fit: BoxFit.cover,
            ),
            title: const Text("Maldive"),
            centerTitle: true,
          ),
          ////height of shown bar when u scroll *
          collapsedHeight: kToolbarHeight + 20,
        ),
        SliverList(
          delegate:

              ///first way to create a sliverlist///
              /* SliverChildBuilderDelegate((ctx, index) {
              return Container(
                height: 200,
                color: Colors.orange,
                margin: const EdgeInsets.all(20),
              );
            }, childCount: 20),*/
              ///second way to create a sliver list////
              SliverChildListDelegate([
            Container(
              color: Colors.red,
              height: 200,
            ),
            Container(
              color: Colors.orange,
              height: 200,
            ),
            Container(
              color: Colors.orange,
              height: 200,
            ),
            Container(
              color: Colors.orange,
              height: 200,
            ),
          ]),
        ),

        ///creating a sliver grid in different ways
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),

        //second way
        SliverGrid.count(
          crossAxisCount: 10,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Text('grid item '),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Text('grid item '),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Text('grid item '),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Text('grid item '),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Text('grid item '),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Text('grid item '),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Text('grid item '),
            ),
          ],
        ),
        //Sliver grid extent
      ],
    );
  }
}
