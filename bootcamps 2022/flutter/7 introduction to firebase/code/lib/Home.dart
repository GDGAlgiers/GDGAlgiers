import 'package:flutter/material.dart';
import 'package:flutter_application_1/Buttom.dart';
List<buttomsInfo> Buttoms = [];  

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      initList();

    return Container(
      child: Scaffold(
        appBar: AppBar(
                    backgroundColor:Color.fromARGB(255, 3, 11, 122),
                     centerTitle: true,
                        title:  Column( 
                                  children : [
                                   Text("Introduction to Firebase" ,  style: TextStyle(color: Colors.white),)
                                  ]

                          )
                   ),
        
      backgroundColor:Color.fromARGB(255, 3, 11, 122) ,  
          body: Center(
            child:  Column(
              
              children: [
                Expanded(
                  
                      child: ListView.builder(
                //     scrollDirection: Axis.horizontal,

                      padding:EdgeInsets.only(top:150),
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int ind) {
                        return Container(
                           margin: EdgeInsets.all(30),
                            child: 
                             Buttom(text:  Buttoms[ind].text,
                             nextpage:  Buttoms[ind].nextpage,
                              
                             ),

                            
                              
                            
                          );
                        },
                      ),
                    ),
              ],
            ),
           )
      
    )
    );
  }
}
void initList()
{
buttomsInfo a = new buttomsInfo();
a.text=
     a.text="Cloud Firestore";
   a.nextpage="cloudfirebase";
      Buttoms.add(a);
      a = new buttomsInfo();
a.text="Firebase Storage ";
    a.nextpage="storage";
     Buttoms.add(a);

  

}
