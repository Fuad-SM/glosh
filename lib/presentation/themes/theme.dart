import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CardStyle {
  static TextStyle titleTxtstyle = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: blackColor,
  );
  static TextStyle categoryTxtstyle = GoogleFonts.poppins(
      fontSize: 11, fontWeight: FontWeight.w500, color: whiteColor);
  static TextStyle priceTxtstyle = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, color: blackColor);
}

TextStyle detailTxtstyle = GoogleFonts.poppins(
    fontSize: 13, fontWeight: FontWeight.w300, color: Color(0xff86817A));
TextStyle regularTextStyle = GoogleFonts.poppins(color: blackColor);
TextStyle elevatedButtonTextStyle = GoogleFonts.poppins(
    fontSize: 18, color: whiteColor, fontWeight: FontWeight.w500);
TextStyle titleGSTextStyle = GoogleFonts.poppins(
    fontSize: 34, color: lightSeaGreenColor, fontWeight: FontWeight.w700);
TextStyle titleTextStyle = GoogleFonts.poppins(
    fontSize: 24, color: lightSeaGreenColor, fontWeight: FontWeight.w700);
TextStyle headerTxtStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w600, color: lightSeaGreenColor);
TextStyle header2TxtStyle =
    GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700);

Color blackColor = Color(0xff101012);
Color whiteColor = Color(0xffFFFFFF);
Color darkSeaGreenColor = Color(0xff0A9396);
Color lightSeaGreenColor = Color(0xff20B2AA);
// Color checkColor = Color(0xffDBEFE3);
Color lightGreenColor = Color(0xffDBEFE3);
Color tealColor = Color(0xff006D7C);
Color orangeColor = Color(0xffF57249);
const Color greyColor = Color(0xff82868E);
const Color lightGreyColor = Color.fromARGB(255, 197, 202, 202);
