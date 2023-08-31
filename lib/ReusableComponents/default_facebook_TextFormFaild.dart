// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DefaultTextFormFaild extends StatelessWidget {
  String text;
DefaultTextFormFaild({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30.0,right: 30.0),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            color: Color.fromRGBO(168, 187, 228, 1.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(168, 187, 228, 1.0),),
          ),
        ),
      ),
    );
  }
}
