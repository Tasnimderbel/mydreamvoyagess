
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mydreamvoyagess/Screens/home_screen.dart';
import 'package:mydreamvoyagess/reusable_widgets/reusable_widget.dart';
import 'package:mydreamvoyagess/utils/color_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _UserNameController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _dateofbirthTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _confirmpasswordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
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
                  reusableTextField("Enter UserName", Icons.person_outline, false,
                       _UserNameController),
                  const SizedBox(
                    height: 20,
                 ),
                 reusableTextField("Enter Email Id", Icons.attach_email_outlined, false,
                     _emailTextController),
                 const SizedBox(
                   height: 20,
                 ),
                  reusableTextField("Date Of Birth", Icons.date_range_outlined, false,
                      _dateofbirthTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outline, false,
                      _passwordTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Confirm Password", Icons.lock_outline, false,
                      _confirmpasswordTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  firebaseButton(context, "Sign Up", () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                        .then((value) {
                      print("Created New Account");
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  })
               ],
             ),
       ))),
    );
}
}
