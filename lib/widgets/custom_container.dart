import 'package:flutter/material.dart';


customContainer(String iconName, String text) {
  return Container(
    height: 60,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          iconName,
          height: 35,
        ),
        Text(text),
      ],
    ),
  );
}