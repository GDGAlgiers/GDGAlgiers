import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        //creating a notched appbar
        shape: CircularNotchedRectangle(),
      ),
      ///creating a floating action button
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Buttons in Flutter"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /////Explanation why textbutton and why evelated button
            /*  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text("Accept"),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: const Text("Decline"),
                    onPressed: () {},
                  ),
                ],
              ),*/
            //textbutton and it's styling + textbutton.icon
            TextButton(
                /*style: TextButton.styleFrom(
                      ////Text alignment
                      alignment: Alignment.centerLeft,
                      elevation: 10,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.red,
                      minimumSize: const Size(200, 50)),*/
                onPressed: () {},
                child: const Text("Text button")),
            const SizedBox(height: 50),
            ElevatedButton(
                /*  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.red,
                  ),*/
                onPressed: () {},
                child: const Text("Elevated Button")),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton(
              /* onLongPress: () {
                    print("Hello gdg community");
                  },
                  icon: const Icon(Icons.add),*/
              style: OutlinedButton.styleFrom(
                  /*     side: const BorderSide(color: Colors.orange, width: 5),
                      alignment: Alignment.center,
                      minimumSize: const Size(240, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {},
                  label: const Text("Outlined Button")*/
                  ),
              child: const Text("Outlined Button"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
