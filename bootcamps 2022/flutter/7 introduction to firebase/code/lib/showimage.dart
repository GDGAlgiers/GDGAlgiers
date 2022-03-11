import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:flutter_application_1/loading_page.dart';
class Showimage extends StatefulWidget {
  const Showimage({ Key? key }) : super(key: key);

  @override
  _ShowimageState createState() => _ShowimageState();
}

class _ShowimageState extends State<Showimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                    backgroundColor:Color.fromARGB(255, 13, 37, 119),
                     centerTitle: true,
                        title:  Column( 
                                  children : [
                                   Text("Show images" ,  style: TextStyle(color: Colors.white),)
                                  ]

                          )
                   ),
                                       backgroundColor:Color.fromARGB(255, 13, 37, 119),

               body : Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     FutureBuilder(
                                future: downloadURL('16392542_303.jpg'),
                                    builder: (BuildContext context,
                                     AsyncSnapshot<String> snapshot) {
                                      if (snapshot.hasError) {
                                     return Text('Something went wrong');
                                      }

                                   if (snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData) {
                                           return Loading();
                                           }
                                   if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                                           return Container(
                                            // width: 100,
                                             //height: 250,
                                             child:Image.network(snapshot.data!, fit :BoxFit.cover
                                             ,)
                                          );} 
                         return Container();

                                  }

                     ),
    
                   ],



                 ),
               ),
      
    );
  }
}
Future<firebase_storage.ListResult> listExample() async {
  firebase_storage.ListResult result = await firebase_storage
      .FirebaseStorage.instance
      .ref('test')
      .list(firebase_storage.ListOptions(maxResults: 10));
      return result;
  
}
Future<String> downloadURL(String imageName) async {
  String downloadURL = await firebase_storage.FirebaseStorage.instance
      .ref('test/$imageName')
      .getDownloadURL();
      return downloadURL;

  // Within your widgets:
  // Image.network(downloadURL);
}