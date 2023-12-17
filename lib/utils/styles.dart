import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:revo_dol/utils/constants.dart';

ButtonStyle logInPageElevatedButtonStyle = ButtonStyle(
  backgroundColor:
  const MaterialStatePropertyAll<Color>(Colors.pinkAccent),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: const BorderSide(
        style: BorderStyle.none
      ),
    ),
  ),
);

//LogIn ButtonTextStyles
TextStyle kLogInElevatedButtonTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kLogInPageElevatedButtonTextColors,
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
  ),
);

//Drawer TextStyles
TextStyle kDrawerTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kLogInPageElevatedButtonTextColors,
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
  ),
);