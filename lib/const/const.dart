
import 'package:assignment/const/styles.dart';
import 'package:flutter/material.dart';

final kInputDecoration = InputDecoration(
  hintText: "Enter your email",
  hintStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
  labelText: "Email",
  labelStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
  floatingLabelBehavior: FloatingLabelBehavior.always,
  prefixIcon: Icon(Icons.mail,),
 // suffixIcon: Icon(Icons.remove_red_eye, color: kPrimaryColor,),
  contentPadding: const EdgeInsets.all(25),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    gapPadding: 20,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    gapPadding: 20,
  ),
);