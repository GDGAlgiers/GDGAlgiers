import 'package:flutter/material.dart';
import 'package:network_workshop/models.dart';
import 'package:network_workshop/data_service.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final data_service = DataService();
  final textController = TextEditingController();
  late DateResponse? _response = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_response != null) Text(_response!.datetime),
            SizedBox(
              width: 150,
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(labelText: 'Timezone'),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              child: Container(
                color: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: const Text('Get Response',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              onPressed: getData,
            ),
          ],
        ),
      ),
    );
  }

  void getData() async {
    final response = await data_service.getTime(textController.text);
    setState(() {
      _response = response;
    });
  }
}
