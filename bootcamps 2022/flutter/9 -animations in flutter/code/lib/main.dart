
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(home:Scaffold(
  body: Center(
    child: ListView(
      children: [
        ListTile(
          title: Text("Abdelghani" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
          ),
          trailing: AnimatedIconExmp(),
        ),

        ListTile(
          title: Text("Abdelghani" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
          ),
          trailing: AnimatedIconExmp(),
        ),


        ListTile(
          title: Text("Aymene" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
          ),
          trailing: AnimatedIconExmp(),
        ),


        ListTile(
          title: Text("Abderahman" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
          ),
          trailing: AnimatedIconExmp(),
        ),


        ListTile(
          title: Text("maroua" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
          ),
          trailing: AnimatedIconExmp(),
        ),

        ListTile(
          title: Text("fadila" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
          ),
          trailing: AnimatedIconExmp(),
        ),
      ],
    ),
  ),
) ));


class AnimatedIconExmp extends StatefulWidget {
  const AnimatedIconExmp({Key? key}) : super(key: key);

  @override
  State<AnimatedIconExmp> createState() => _AnimatedIconExmpState();
}

class _AnimatedIconExmpState extends State<AnimatedIconExmp> with
    SingleTickerProviderStateMixin{
  late AnimationController  _controller ;
  late  Animation _colorAnimation ;
  late Animation _sizeAnimation ;
   bool stt =true;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
        vsync: this
    );

    _controller.addStatusListener((status) {
      if(status==AnimationStatus.completed){
        stt = false ;
      }else{
        stt = true ;
      }
    });

    _colorAnimation =
        ColorTween(begin: Colors.blueGrey , end: Colors.red)
            .animate(_controller);
    _sizeAnimation = Tween(begin: 50.0 , end: 60.0).animate(_controller) ;
  }
@override
  void dispose() {
    super.dispose();
    _controller.dispose() ;
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return IconButton(
            onPressed: (){
              stt == true ? _controller.forward() : _controller.reverse() ;
            },
            icon: Icon(
              Icons.heart_broken ,
              size: _sizeAnimation.value,
              color: _colorAnimation.value,
            ));
      },
    );
  }
}
