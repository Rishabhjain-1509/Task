import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatefulWidget {
  final String txt;
  final double size;
  final Color col;
  final FontWeight wet;
  const CustomText(
      {Key? key,
      required this.txt,
      required this.col,
      required this.size,
      required this.wet})
      : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.txt,
      style: GoogleFonts.roboto(
          fontSize: widget.size, color: widget.col, fontWeight: widget.wet),
    );
  }
}
