
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LocationView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text('Location', style: GoogleFonts.montserratAlternates(
          color: Colors.black,
          decoration: TextDecoration.none,
          fontSize: 80,
          fontWeight: FontWeight.bold
              ),),
        ),),
    );
  }
}