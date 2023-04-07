import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double logoSize;
  final double fontsize;

  AuthHeading(
      {required this.fontsize,
      required this.logoSize,
      required this.logo,
      required this.mainText,
      required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        Row(
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: fontsize,
                  color: Color(0xff000221)),
            ),
            Container(
              child: Image.asset(
                logo,
                filterQuality: FilterQuality.high,
              ),
              height: logoSize,
              width: logoSize,
            ),
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: fontsize,
              color: Color(0xff000221)),
        ),
      ],
    );
  }
}
