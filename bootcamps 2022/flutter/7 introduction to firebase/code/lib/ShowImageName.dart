
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:flutter_application_1/loading_page.dart';
class ShowImageName extends StatefulWidget {
  const ShowImageName({ Key? key }) : super(key: key);

  @override
  _ShowImageNameState createState() => _ShowImageNameState();
}

class _ShowImageNameState extends State<ShowImageName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                    backgroundColor:Color.fromARGB(255, 3, 11, 122),
                     centerTitle: true,
                        title:  Column( 
                                  children : [
                                   Text("Storage Firebase" ,  style: TextStyle(color: Colors.white),)
                                  ]

                          )
                   ),
                                       backgroundColor:Color.fromARGB(255, 3, 11, 122),

               body : Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     FutureBuilder(
                                future: listExample(),
                                    builder: (BuildContext context,
                                     AsyncSnapshot<firebase_storage.ListResult> snapshot) {
                                      if (snapshot.hasError) {
                                     return Text('Something went wrong');
                                      }

                                   if (snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData) {
                                           return Loading();
                                           }
                                   if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                                           return Container(
                                             
                                              height: 400,
                                             padding: const EdgeInsets.symmetric(horizontal: 20),
                                             child : ListView.builder(
                                               scrollDirection: Axis.vertical,
                                               shrinkWrap: true,
                                                
                                                itemCount: snapshot.data!.items.length,
                                                itemBuilder: (BuildContext context , int index){
                                               
                                              return  Padding(
                                                 padding : const EdgeInsets.all(8.0),
                                                 child : ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      primary: Color.fromARGB(255, 240, 159, 11),
                                                         minimumSize: const Size(200, 50),
                                                         maximumSize: const Size(200, 50),
                                                         shadowColor: Colors.blueAccent, 

                                                          ),
                                                   
                                                   onPressed: (){},
                                                   
                                                  
                                                child : Text(snapshot.data!.items[index].name ,
                                                   style: TextStyle(
                                                 color: Colors.white,
                                                 fontWeight: FontWeight.w800,
                                                  
                                               ),
                                                
                                                
                                                )
                                                )
                                        ); 
                                        }
                                  )
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
      .ref('users/123/avatar.jpg')
      .getDownloadURL();
      return downloadURL;

  // Within your widgets:
  // Image.network(downloadURL);
}