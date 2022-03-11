
// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
const myBlue= Color(0x00000000);
const myRed  = Color.fromARGB(255, 13, 37, 119);
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Material(
      child: Container(
      
        color: Color.fromARGB(255, 3, 11, 122),
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
             Midle(),
           
            Footer(myRed: myBlue),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.myRed,
  }) : super(key: key);

  final Color myRed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(255, 140, 196, 248),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Inscrire(myRed: myRed),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: SeConnecter(myRed: myRed),
            ),
          ],
        ),
      ),
    );
  }
}



class Midle extends StatelessWidget {
  const Midle({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image(
          image: AssetImage('assets/LOGO-01.jpeg'),
        ),
    ],
    );
  }
}



class SeConnecter extends StatelessWidget {
  const SeConnecter({
    Key? key,
    required this.myRed,
  }) : super(key: key);

  final Color myRed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: AutoSizeText(
        'Se connecter',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        maxLines: 1,
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 9, vertical: 15),
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
            color: Color.fromARGB(255, 5, 69, 122),
            width: 2,
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/login');
      },
    );
  }
}

class Inscrire extends StatelessWidget {
  const Inscrire({
    Key? key,
    required this.myRed,
  }) : super(key: key);

  final Color myRed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: AutoSizeText(
          'S\'inscrire',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          maxLines: 1,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(
              color: Color.fromARGB(255, 5, 69, 122),
              width: 2,
            ),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/inscription');
        });
  }
}
