import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Text_fields extends StatelessWidget {
  final TextInputType keyboardtype;
  final bool obscureText;
  final String labelText;
  final IconData icon;
  final double iconSize;
  final double fontSize;

  Text_fields(
      {required this.fontSize,
      required this.icon,
      required this.iconSize,
      required this.keyboardtype,
      required this.labelText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      keyboardType: keyboardtype,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Color(0xffe8eb34),
        filled: true,
        prefixIcon: Icon(
          icon,
          size: iconSize,
        ),
        prefixIconColor: Colors.blue,
        // color: Colors.deepPurpleAccent,
        label: Text(
          labelText,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: Colors.blueGrey),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}
