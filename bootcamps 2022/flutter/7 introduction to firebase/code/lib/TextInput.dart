import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    Key? key,
    required this.labelText,
    // ignore: prefer_equal_for_default_values
    this.obscured: false, required this.controller , String Function(String)? validator,
  }) : super(key: key);

  final String labelText;
  final bool obscured;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscured,
      style: TextStyle(
        fontSize: 25,
        fontFamily: 'Gotham',
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        
      labelStyle: TextStyle(
        fontWeight: FontWeight.w500,
                fontSize: 25,
              color:  Colors.black ,
            ),
      
        alignLabelWithHint: true,
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 143, 31, 23), width: 2),
            borderRadius: BorderRadius.circular(100)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 143, 31, 23), width: 2),
            borderRadius: BorderRadius.circular(100)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 211, 160, 19), width: 2),
            borderRadius: BorderRadius.circular(100)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(100),
        ),
        contentPadding: EdgeInsets.only(left: 25, top: 20, bottom: 20),
      ),
      //onChanged: (val) => userName = val,
      validator: (val) => val!.isEmpty ? 'Il faut remplire ce champ' : null,
    );
  }
}
