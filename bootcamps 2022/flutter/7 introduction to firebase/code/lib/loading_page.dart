import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({ Key? key }) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Color.fromARGB(255, 13, 37, 119),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
      color: Color.fromARGB(255, 13, 37, 119),
              child : Center(
                child: Text('Loading ..' , 
              
                style: TextStyle(
              fontSize: 25,
              fontFamily: 'Gotham',
              fontWeight: FontWeight.w300,
              color: Colors.white,

                ),
              
              ),
              
              
              
              )
            
          ),
        ],
      ),
    );
  }
}