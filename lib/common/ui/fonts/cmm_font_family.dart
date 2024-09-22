import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//* Esta clase es para definir el estilo del fontFamily
class FontFamily {

  // titulos Kanit
  TextStyle titleFont({
    Color? color, 
    double? letterSpacing,
    double? size,
    FontWeight? fontType,
    TextDecoration? textDecoration,
    }) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: color ?? Colors.grey[900],
        letterSpacing: letterSpacing ?? .4,
        fontSize: size ?? 20,
        fontWeight: fontType,
        decoration: textDecoration
      ),
    );
  }

  // contenido
  TextStyle contentFont({
    Color? color,
    double? letterSpacing,
    double? size,
    FontWeight? fontType,
    TextDecoration? textDecoration,
    }) {
    return GoogleFonts.kanit(
      textStyle: TextStyle(
        color: color ?? Colors.grey[900],
        letterSpacing: letterSpacing ?? .4,
        fontSize: size ?? 15,
        fontWeight: fontType,
        decoration: textDecoration
      ),
    );
  }

}