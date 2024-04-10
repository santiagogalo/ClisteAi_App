import 'package:clisteai/view/pages/ui/color/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Estilos {
  TextStyle h1_black = GoogleFonts.nunito(
      color: Colores().textColor_black,
      fontSize: 30,
      fontWeight: FontWeight.bold);
  TextStyle h1_white = GoogleFonts.nunito(
      color: Colores().textColor_white,
      fontSize: 30,
      fontWeight: FontWeight.bold);
  TextStyle h2_black = GoogleFonts.nunito(
      color: Colores().textColor_black,
      fontSize: 24,
      fontWeight: FontWeight.bold);
  TextStyle h2_white = GoogleFonts.nunito(
      color: Colores().textColor_white,
      fontSize: 24,
      fontWeight: FontWeight.bold);
  TextStyle h3_black = GoogleFonts.nunito(
      color: Colores().textColor_black,
      fontSize: 22,
      fontWeight: FontWeight.bold);
  TextStyle h3_white = GoogleFonts.nunito(
      color: Colores().textColor_white,
      fontSize: 22,
      fontWeight: FontWeight.bold);
  TextStyle h4_black = GoogleFonts.nunito(
      color: Colores().textColor_black,
      fontSize: 20,
      fontWeight: FontWeight.bold);
  TextStyle h4_white = GoogleFonts.nunito(
      color: Colores().textColor_white,
      fontSize: 20,
      fontWeight: FontWeight.bold);

  TextStyle paragraph_black = GoogleFonts.nunito(
      color: Colores().textColor_black,
      fontSize: 15,
      fontWeight: FontWeight.w600);
  TextStyle paragraph_white = GoogleFonts.nunito(
      color: Colores().textColor_black,
      fontSize: 15,
      fontWeight: FontWeight.w600);
  TextStyle link = GoogleFonts.nunito(
      color: Colores().textColor_blue,
      fontSize: 15,
      decoration: TextDecoration.underline,
      decorationThickness: 3,
      fontWeight: FontWeight.w600);
  TextStyle bottomcolor_white = GoogleFonts.nunito(
      color: Colores().textColor_blue,
      fontSize: 20,
      fontWeight: FontWeight.w600);
  TextStyle bottomcolor_blue = GoogleFonts.nunito(
      color: Colores().secondaryColor,
      fontSize: 20,
      fontWeight: FontWeight.w600);
  TextStyle hinttext_h1 = GoogleFonts.nunito(
      color: Colores().textColor_hint,
      fontSize: 24,
      fontWeight: FontWeight.bold);
  TextStyle hinttext_paragraph = GoogleFonts.nunito(
      color: Colores().textColor_hint,
      fontSize: 15,
      fontWeight: FontWeight.bold);
}

class ImagesVsg {
  String logo = 'assets/svg/LogoCliste.svg';
  String backgroundimage = 'assets/images/background.png';
  String spainflag = 'assets/images/spain.png';
  String portuguesflag = 'assets/images/portugues.png';
  String englishflag = 'assets/images/english.png';
  String arrowdropicon = 'assets/svg/arrowdowndrop.svg';
  String googlelogo = 'assets/images/google.png';
  String mailicon = 'assets/svg/mailicon.svg';
  String checkIcon = 'assets/svg/checkicon.svg';
}
