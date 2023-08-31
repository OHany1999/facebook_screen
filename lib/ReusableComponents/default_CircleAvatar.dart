import 'package:flutter/material.dart';

Widget DefaultCircleIcon({required double size,required Color iconColor,required IconData icon,required Color backgroundColor}){

  return  CircleAvatar(
    radius: size,
    child: Icon(
      icon,
      color: iconColor,
    ),
    backgroundColor: backgroundColor,
  );
}