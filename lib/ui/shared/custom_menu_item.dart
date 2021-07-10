import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItemWidget extends StatefulWidget {

  final String text;
  final int delay;
  final Function onPressed;

  CustomMenuItemWidget({
    Key? key,
    required this.text,
    required this.delay,
    required this.onPressed
    }) : super(key: key);

  @override
  _CustomMenuItemWidgetState createState() => _CustomMenuItemWidgetState();
}

class _CustomMenuItemWidgetState extends State<CustomMenuItemWidget> {

  bool isHover = false;


  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      from: 10,
      duration: Duration(milliseconds: widget.delay),
      child: MouseRegion(
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: GestureDetector(
          onTap: () => widget.onPressed(),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 150,
            height: 50,
            color: isHover ? Colors.pinkAccent : Colors.black,
            child: Center(
              child: Text(
                widget.text,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.white,
                  decoration: TextDecoration.none
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}