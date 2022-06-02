import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = const Color(0xffffcc00);
Color kBlackColor = const Color(0xff000000);
Color kRedColor = const Color(0xfff34141);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kTextColor = const Color(0xff31404B);
Color kGreyColor = const Color(0xffEDEFF4).withOpacity(0.96);
Color kOrangeColor = const Color(0xffFF7E1F);
Color kBlueColor = const Color(0xff0CB2E2);
Color kDarkColor = const Color(0xff31404B);

TextStyle blackTextStyle = GoogleFonts.montserrat(
  color: kBlackColor,
);
TextStyle blueTextStyle = GoogleFonts.montserrat(
  color: kBlueColor,
);
TextStyle whiteTextStyle = GoogleFonts.montserrat(
  color: kWhiteColor,
);
TextStyle mainTextStyle = GoogleFonts.montserrat(
  color: kTextColor,
);
TextStyle orangeTextStyle = GoogleFonts.montserrat(
  color: kOrangeColor,
);
TextStyle darkTextStyle = GoogleFonts.montserrat(
  color: kDarkColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;
