import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class Buttom extends StatelessWidget {
  Buttom({Key? key, required this.text, required this.nextpage })
      : super(key: key);
  final String text;
  final String nextpage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [TextButton(
          onPressed:() {Navigator.pushNamed(context, '/${nextpage}');},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Color.fromARGB(255, 240, 159, 11),
          ),
          
          child: Container(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 15,
              ),     
          
              child: Column(
                
                children: [
                  Row(
                    children: [
                    
                      
                      Expanded(
                       // flex: 1,
                        child: Center(
                          child: AutoSizeText(
                            text,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                              height:   0.025* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                    ],
                  ),
                ],
               
              ),
              
            ),
            
        
        )
        
        ),
        Expanded(
            child: Container(
              
            ),
          )
      ],
    );
    
      
  }
}
class buttomsInfo{
    
 late String text;
 late String nextpage;



}