import 'package:flutter/material.dart';
import 'package:formation_gdg/buttons.dart';
import 'package:formation_gdg/expanded_flexible.dart';
import 'package:formation_gdg/fraction_sized_box.dart';
import 'package:formation_gdg/layoutbuilder.dart';
import 'package:formation_gdg/media_query.dart';
import 'package:formation_gdg/orientation.dart';
import 'package:formation_gdg/slivers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
