import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gdb bootcamp',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.star, color: Colors.black),
        title: Text(
          "username",
          style: TextStyle(
            color: Colors.black,
            //fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: "Body",
          ),
        ),
        actions: const [
          Icon(Icons.ac_unit, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.menu, color: Colors.black)
        ],
        //elevation: 0,
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            leading: CircleAvatar(
              //backgroundColor: Colors.red,
              child: Image.asset('images/gdb-logo.png'),
              //backgroundImage: AssetImage('images/gdb-logo.png'),
            ),
            title: Text("title"),
            subtitle: Text("Subtitle"),
            trailing: Text("12;20"),
          ),
          Container(height: 200, color: Colors.red),
          Container(height: 200, color: Colors.yellow),
          Container(height: 200, color: Colors.green),
          Container(height: 200, color: Colors.red),
          Container(height: 200, color: Colors.yellow),
          Container(height: 200, color: Colors.green),
        ],
      ),
    );
  }
}
