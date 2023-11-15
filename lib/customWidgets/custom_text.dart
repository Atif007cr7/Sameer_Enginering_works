import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text poppins({
  required String text,
  double? size,
  Color? color,
  FontWeight? fontweight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: size,
      color: color,
      fontWeight: fontweight,
    ),
  );
}
