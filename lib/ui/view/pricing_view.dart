
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PricingView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text('Pricing', style: GoogleFonts.montserratAlternates(
          color: Colors.black,
          decoration: TextDecoration.none,
          fontSize: 80,
          fontWeight: FontWeight.bold
              ),),
        ),),
    );
  }
}