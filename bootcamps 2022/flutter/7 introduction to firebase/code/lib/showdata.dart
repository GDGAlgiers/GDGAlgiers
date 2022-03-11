import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/loading_page.dart';

class ShowData extends StatefulWidget {
  @override
    _ShowDataState createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
  .collection('Players')
  .limit(10)
  .snapshots(includeMetadataChanges: true);

  @override
  Widget build(BuildContext context) {
  
    return StreamBuilder<QuerySnapshot>(
      
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        }

        return Scaffold(
           appBar: AppBar(
                    backgroundColor:Color.fromARGB(255, 3, 11, 122),
                     centerTitle: true,
                        title:  Column( 
                                  children : [
                                   Text("Show Data" ,  style: TextStyle(color: Colors.white),)
                                  ]

                          )
                   ),
                    backgroundColor:Color.fromARGB(255, 3, 11, 122),
          body: ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[ Container(
                  margin: EdgeInsets.all(15),
                  child: UsersCard(fullname :data['full_name'], team :data['team'],  ),
                    
            
           
                  ),
                ]
              );
              
            }).toList(),
          ),
        );
      },
    );
  }
}
class UsersCard extends StatelessWidget {
  final String fullname;
  final String team;
  UsersCard({
    //required Key key,
    this.fullname: "loading",
    
    this.team : "loading",
    
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color:Color.fromARGB(255, 240, 159, 11),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Row(
                children: [
                  
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: AutoSizeText(
                            'Full name  : $fullname',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: AutoSizeText(
                           'Team : $team ',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                          
                      
                         
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}