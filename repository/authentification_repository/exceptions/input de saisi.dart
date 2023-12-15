import 'package:flutter/material.dart';
import 'package:mydreamvoyagess/Screens/signup_screen.dart';
@override
@override
Widget build(BuildContext context) {
   return Form(
       key: _formKey,
       child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           TextFormField(
           validator: (value) {
   if (value == null || value.isEmpty) {
   return 'Please enter your UserName';
   }
   RegExp regex = RegExp(r'^[a-zA-Z]+$');
   if (!regex.hasMatch(value)) {
   return 'Please enter letters A to Z only';
   }
   return null;
   }),
   TextFormField(
   validator: (value) {
   if (value == null || value.isEmpty) {
   return 'Please enter your Email Id';
   }
   RegExp regex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
   if (!regex.hasMatch(value)) {
   return 'Please enter a valid email address';
   }
   return null;
   };
}