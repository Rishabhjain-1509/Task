import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white54,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Image.asset("assets/Group 22.png"),
                20.heightBox,
                Row(),
                20.heightBox,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(right: 17.0, left: 7.0),
                              child: Image.asset("assets/001-mail@2x.png"),
                            ),
                            label: const Text("EMAIL"),
                            labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                            border: bord,
                            focusedBorder: bord,
                            enabledBorder: bord,
                            focusedErrorBorder: bord,
                          ),
                        ),
                        30.heightBox,
                        TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  right: 30.0, left: 20.0),
                              child: Image.asset("assets/002-password@2x.png"),
                            ),
                            label: const Text("PASSWORD"),
                            labelStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                            border: bord,
                            focusedBorder: bord,
                            enabledBorder: bord,
                            focusedErrorBorder: bord,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                20.heightBox,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        primary: Colors.redAccent), // <-- Radius

                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "LOG IN",
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          ),
                          100.widthBox,
                          Image.asset("assets/icon-2.png"),
                        ],
                      ),
                    )),
                20.heightBox,
                const Text(
                  "Forget Password?",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w800),
                ).objectTopRight(),
                30.heightBox,
                const Text(
                  "Don’t have an account? Swipe right to",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                ),
                10.heightBox,
                const Text(
                  "create a new account.",
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w600),
                ),
                30.heightBox,
                const Text(
                  "or.",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/facebook@2x.png")),
                      ),
                    ),
                    20.widthBox,
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/search@2x.png")),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const OutlineInputBorder bord = OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.white,
  ),
);

Widget txtdesign(txt, size, col, wet) {
  return (Text(
    txt,
    style: GoogleFonts.roboto(fontSize: size, color: col, fontWeight: wet),
  ));
}
