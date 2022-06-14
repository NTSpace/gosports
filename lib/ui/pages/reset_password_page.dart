import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/dialog_reset.dart';

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
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color(0xff292C31),
          elevation: 0,
          leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: Image.asset(
              'assets/back_icon.png',
              width: 15,
            ),
          ),
          title: Text(
            'Reset Password',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35),
                padding: const EdgeInsets.all(43),
                decoration: const BoxDecoration(
                  color: Color(0xffFFE5D2),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Image.asset(
                  'assets/reset_password_icon.png',
                  width: 40,
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
                    floatingLabelStyle: TextStyle(
                      color: kOrangeColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kOrangeColor,
                        width: 1,
                      ),
                    ),
                    labelText: 'Kata sandi lama',
                    hintText: 'Masukan kata sandi lama',
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
                    floatingLabelStyle: TextStyle(
                      color: kOrangeColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kOrangeColor,
                        width: 1,
                      ),
                    ),
                    labelText: 'Kata sandi baru',
                    hintText: 'Masukan kata sandi baru',
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
                    floatingLabelStyle: TextStyle(
                      color: kOrangeColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kOrangeColor,
                        width: 1,
                      ),
                    ),
                    labelText: 'Kata sandi baru sekali lagi',
                    hintText: 'Masukan kata sandi baru sekali lagi',
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
              InkWell(
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const ResetDialog(
                        description:
                            'Kami telah mengirimkan email ke ......@gmail.com yang berisi tautan untuk mengatur ulang kata sandi Anda',
                        title: 'Email terkirim',
                      ),
                    );
                  },
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
      ),
    );
  }
}
