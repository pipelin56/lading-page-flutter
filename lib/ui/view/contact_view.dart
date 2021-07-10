
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ContactView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text('Contact', style: GoogleFonts.montserratAlternates(
          color: Colors.black,
          decoration: TextDecoration.none,
          fontSize: 80,
          fontWeight: FontWeight.bold
              ),),
        ),),
    );
  }
}