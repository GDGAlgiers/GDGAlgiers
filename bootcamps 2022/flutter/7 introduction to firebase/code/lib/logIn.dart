



import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/TextInput.dart';
import 'package:flutter_application_1/Add.dart';

const myRed = Color.fromARGB(255, 3, 11, 122);
const myRed2 = Color.fromARGB(255, 3, 14, 158);

  late GlobalKey _formKey;

//const LinearGradient myGradiant =
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> { 
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
    return Material(
      child: Container(
        padding: EdgeInsets.only(
            bottom: (MediaQuery.of(context).viewInsets.bottom - 100) > 0
                ? MediaQuery.of(context).viewInsets.bottom - 100
                : MediaQuery.of(context).viewInsets.bottom),
        decoration: BoxDecoration(
          gradient:  LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 1],
                          colors: [
                                    myRed,
                                    myRed2,
                                    
                                  ],
    ),
        ),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
  AutoSizeText(
              "Se connecter",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
            Stack(
                alignment: AlignmentDirectional.center,              
                clipBehavior: Clip.none,
                children: [
               LogCard(
                  formKey: _formKey,
                ),
               
             ],
          ),
           ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class LogCard extends StatefulWidget {
  LogCard({
    Key? key,
    
      required this.formKey,
  }) : super(key: key);
  
  GlobalKey<FormState> formKey;

  @override
  _LogCardState createState() => _LogCardState();
}

class _LogCardState extends State<LogCard> {
   late TextEditingController _email;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding:const EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: widget.formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextForm(
                  labelText: 'Email',
                  controller: _email,
                   
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextForm(
                  labelText: 'Password',
                  controller: _password,
                  obscured: true,
                   
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        child: Text(
                          "Se connecter",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                         
                     LogIn();
//
                          
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          backgroundColor: myRed,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: myRed,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        color: Colors.white,
      ),
    );
    
  }

Future <void> LogIn( ) async{

try {
  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: _email.text,
    password: _password.text,
  );
  
  Navigator.pushNamed(context, '/home');
  
} on FirebaseAuthException catch (e) {
  var error = e.code;
  if (e.code == 'user-not-found') {
   error = "No user found for that email.";
  } else if (e.code == 'wrong-password') {
    error = "Wrong password provided for that user.";
  }
  TextButton(
          onPressed: () {},
          child: Text(' erreur dans le mot de passe ou le mail'));
     Showflash(error);
}


} 
 void Showflash(message)
  {

   showFlash(
          context: context,
          duration: const Duration(seconds: 2),
          builder: (context, controller) {
            return Flash.dialog(
                controller: controller,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                backgroundGradient: LinearGradient(colors: [myRed, myRed]),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                       message,

                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        backgroundColor: myRed),
                  ),
                ));
          });


  }












 }

