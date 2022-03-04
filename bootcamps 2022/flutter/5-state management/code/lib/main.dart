import 'package:counter_app/providers/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: const MaterialApp(
        title: "State Mangement App",
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
