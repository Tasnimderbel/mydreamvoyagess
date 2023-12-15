import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mydreamvoyagess/reusable_widgets/reusable_widget.dart';
import 'package:mydreamvoyagess/utils/color_utils.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen ({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() =>  _ForgetPasswordScreenState();
}

class  _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Forget Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                hexStringToColor("CB2B93"),
                hexStringToColor("9546C4"),
                hexStringToColor("5E61F4")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height *0.2, 20, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Email Id", Icons.attach_email_outlined, false,
                        _emailTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    firebaseButton(context, "Forget Password", () {
                      FirebaseAuth.instance
                          .sendPasswordResetEmail(email: _emailTextController.text)
                          .then((value) => Navigator.of(context).pop());
                    })
                  ],
                ),
              ))),
    );
  }
}
