import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late TextEditingController emailAddressControler;
  late TextEditingController passwordControler;
  late TextEditingController cpasswordControler;
  late bool passwordVisibility;
  late bool cpasswordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressControler = TextEditingController();
    passwordControler = TextEditingController();
    cpasswordControler = TextEditingController();
    passwordVisibility = false;
    cpasswordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(66),
        child: AppBar(
          backgroundColor: kOrangeColor,
          flexibleSpace: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 43.28,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/basket_logo.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            // Navigasi login dan signup page
            children: <Widget>[
              Container(
                width: 190,
                height: 50,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                ),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const LoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'MASUK',
                        style: GoogleFonts.montserrat(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 190,
                height: 50,
                decoration: BoxDecoration(
                  color: kGreyColor,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'DAFTAR',
                      style: GoogleFonts.montserrat(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 400,
            height: 2,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: const AlignmentDirectional(-0.6, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'DAFTAR SEKARANG!',
                      style: GoogleFonts.montserrat(
                        fontSize: 25,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Text(
                      'EMAIL',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: semibold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 24,
                    left: 24,
                    top: 5,
                  ),
                  child: TextFormField(
                    controller: emailAddressControler,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: GoogleFonts.lexendDeca(
                        fontSize: 16,
                        fontWeight: regular,
                        color: const Color.fromARGB(151, 116, 113, 113),
                      ),
                      hintText: 'Masukkan email...',
                      hintStyle: GoogleFonts.lexendDeca(
                        fontSize: 16,
                        fontWeight: regular,
                        color: const Color.fromARGB(151, 116, 113, 113),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreyColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBlackColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: kGreyColor,
                      contentPadding: const EdgeInsets.all(24),
                    ),
                    style: GoogleFonts.lexendDeca(
                      fontSize: 14,
                      color: kBlackColor,
                      fontWeight: regular,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Text(
                      'PASSWORD',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: semibold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 24,
                    left: 24,
                    top: 5,
                  ),
                  child: TextFormField(
                    controller: passwordControler,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.lexendDeca(
                        fontSize: 16,
                        fontWeight: regular,
                        color: const Color.fromARGB(151, 116, 113, 113),
                      ),
                      hintText: 'Masukkan Password...',
                      hintStyle: GoogleFonts.lexendDeca(
                        fontSize: 16,
                        fontWeight: regular,
                        color: const Color.fromARGB(151, 116, 113, 113),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreyColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBlackColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: kGreyColor,
                      contentPadding: const EdgeInsets.all(24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color.fromARGB(151, 116, 113, 113),
                          size: 20,
                        ),
                      ),
                    ),
                    style: GoogleFonts.lexendDeca(
                      fontSize: 14,
                      fontWeight: regular,
                      color: kBlackColor,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Text(
                      'KONFIRMASI PASSWORD',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: semibold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 24,
                    left: 24,
                    top: 5,
                  ),
                  child: TextFormField(
                    controller: cpasswordControler,
                    obscureText: !cpasswordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.lexendDeca(
                        fontSize: 16,
                        fontWeight: regular,
                        color: const Color.fromARGB(151, 116, 113, 113),
                      ),
                      hintText: 'Masukkan Password...',
                      hintStyle: GoogleFonts.lexendDeca(
                        fontSize: 16,
                        fontWeight: regular,
                        color: const Color.fromARGB(151, 116, 113, 113),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kGreyColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kBlackColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: kGreyColor,
                      contentPadding: const EdgeInsets.all(24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => cpasswordVisibility = !cpasswordVisibility,
                        ),
                        child: Icon(
                          cpasswordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color.fromARGB(151, 116, 113, 113),
                          size: 20,
                        ),
                      ),
                    ),
                    style: GoogleFonts.lexendDeca(
                      fontSize: 14,
                      fontWeight: regular,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
