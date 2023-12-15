
import 'package:flutter/material.dart';
import 'package:mydreamvoyagess/Screens/home_screen.dart';
import 'package:mydreamvoyagess/reusable_widgets/reusable_widget.dart';
import 'package:mydreamvoyagess/utils/color_utils.dart';

class OpinionScreen extends StatefulWidget {
  const OpinionScreen({super.key});

  @override
  _OpinionScreenState createState() => _OpinionScreenState();
}

class _OpinionScreenState extends State<OpinionScreen> {
  TextEditingController _OpinionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Opinions",
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
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Your Opinion", Icons.person_outline, false,
                    _OpinionController),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(height:20),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text(
                    "Send",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  }
