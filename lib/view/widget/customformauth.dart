import 'package:flutter/material.dart';

class CustomFormAuth extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final IconData icondata;
  final bool obscuretext;
  final TextEditingController mycontroller;

  const CustomFormAuth(
      {super.key,
      required this.labeltext,
      required this.hinttext,
      required this.icondata,
      required this.mycontroller,
      required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        child: TextFormField(
          style: TextStyle(fontSize: 12),
          obscureText: obscuretext,
          controller: mycontroller,
          decoration: InputDecoration(
            labelText: labeltext,
            hintText: hinttext,
            suffixIcon: Icon(icondata),
            hintStyle: const TextStyle(fontSize: 17),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 7),
                borderRadius: BorderRadius.circular(25)),
          ),
        ));
  }
}
