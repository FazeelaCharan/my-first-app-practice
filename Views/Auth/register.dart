import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../Widgets/Auth/auth_heading.dart';
import '../Widgets/Auth/text_fields.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerbtnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Buddy Up",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff000221)),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            new AuthHeading(
              mainText: "Sign UP to Buddy Up ",
              subText: "To connect with\n your buddies ",
              logo: "assets/images/symbol2.png",
              logoSize: 30,
              fontsize: 15,
            ),
            const SizedBox(
              height: 30,
            ),
            new Text_fields(
                keyboardtype: TextInputType.emailAddress,
                obscureText: false,
                icon: Icons.alternate_email,
                fontSize: 13,
                iconSize: 15,
                labelText: "Enter you email   e.g (abc@gmail.com)"),
            SizedBox(
              height: 30,
            ),
            Text_fields(
                keyboardtype: TextInputType.emailAddress,
                obscureText: true,
                icon: Icons.password,
                fontSize: 13,
                iconSize: 15,
                labelText: "Enter your Password"),
            SizedBox(
              height: 35,
            ),
            Text_fields(
                keyboardtype: TextInputType.emailAddress,
                obscureText: true,
                icon: Icons.lock_reset,
                fontSize: 13,
                iconSize: 15,
                labelText: "Confirm your Password"),
            SizedBox(
              height: 35,
            ),
            RoundedLoadingButton(
              width: 2000,
              borderRadius: 10,
              color: Color.fromARGB(255, 5, 65, 114),
              controller: _registerbtnController,
              onPressed: () {
                print("the button was pressed");
              },
              child: (Text(
                "Register ",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.white),
              )),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "By registering, you agree our Terms and Conditions",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Colors.black)),
                Text("Sign In",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.blue)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
