import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';

import '../Widgets/Auth/text_fields.dart';

class ForgetPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgetbtnController =
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            new AuthHeading(
              mainText: "Forgot your password? ",
              subText: "",
              logo: "assets/images/symbol2.png",
              logoSize: 25,
              fontsize: 18,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/forgot-password-icon.png"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "To request for a new one , type your email address below . A link to Reset the password will be sent to that email.",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            new Text_fields(
                keyboardtype: TextInputType.emailAddress,
                obscureText: false,
                icon: Icons.alternate_email,
                fontSize: 13,
                iconSize: 15,
                labelText: "Enter you email   e.g (abc@gmail.com)"),
            SizedBox(
              height: 15,
            ),
            RoundedLoadingButton(
              width: 2000,
              borderRadius: 10,
              color: Color.fromARGB(255, 5, 65, 114),
              controller: _forgetbtnController,
              onPressed: () {
                print("the button was pressed");
              },
              child: (Text(
                "SEND ",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.white),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
