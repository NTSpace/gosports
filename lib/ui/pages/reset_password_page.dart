import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/profile.dart';
import 'package:page_transition/page_transition.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  State<ResetPage> createState() => _ResetPage();
}

class _ResetPage extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color(0xff292C31),
          elevation: 0,
          leading: IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 0),
                    reverseDuration: const Duration(milliseconds: 0),
                    child: const Profile(),
                  ),
                );
              },
              icon: Image.asset(
                'assets/back_icon.png',
                width: 15,
              )),
          title: Text(
            'Reset Password',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 35),
              padding: const EdgeInsets.all(43),
              child: Image.asset(
                'assets/reset_password_icon.png',
                width: 40,
              ),
              decoration: const BoxDecoration(
                color: Color(0xffFFE5D2),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Reset your password',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 51),
                    child: Text(
                      'Kata sandi Anda harus lebih dari enam karakter dan berisi angka, huruf, dan karakter khusus (! \$ @ % %)',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Kata sandi lama',
                  hintStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Kata sandi baru',
                  hintStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Kata sandi baru sekali lagi',
                  hintStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Lupa kata sandi Anda?',
                      style: orangeTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 35, left: 25, right: 25),
              height: 32,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: kOrangeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
