import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/button_signup.dart';
import '../widgets/signup_google.dart';
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
    return SafeArea(
      child: Scaffold(
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
                Flexible(
                  flex: 1,
                  child: Container(
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
                ),
                Flexible(
                  flex: 1,
                  child: Container(
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
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: kDarkColor,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 2,
                    decoration: BoxDecoration(
                      color: kOrangeColor,
                    ),
                  ),
                ),
              ],
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
                        style: darkTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 24,
                      left: 24,
                      top: 15,
                    ),
                    child: TextFormField(
                      controller: emailAddressControler,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: darkTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                        hintText: 'Masukkan email...',
                        hintStyle: darkTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kBlackColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kDarkColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(24),
                      ),
                      style: darkTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 24,
                      left: 24,
                      top: 15,
                    ),
                    child: TextFormField(
                      controller: passwordControler,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: darkTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        hintText: 'Masukkan Password...',
                        hintStyle: darkTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kDarkColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kDarkColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
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
                      style: darkTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 24,
                      left: 24,
                      top: 15,
                    ),
                    child: TextFormField(
                      controller: cpasswordControler,
                      obscureText: !cpasswordVisibility,
                      decoration: InputDecoration(
                        labelText: 'Konfirmasi Password',
                        labelStyle: darkTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        hintText: 'Masukkan Password...',
                        hintStyle: darkTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kDarkColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kDarkColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
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
                      style: darkTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: ButtonSignup(
                      text: 'BUAT AKUN',
                      onPressed: () {
                        print('Button-Login pressed ...');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(
                              top: 10,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 138,
                                  height: 1,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff31404B),
                                  ),
                                ),
                                Text(
                                  'ATAU',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: semibold,
                                      color: kBlackColor),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  width: 138,
                                  height: 1,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff31404B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: GoogleSignUp(
                      text: 'DAFTAR MELALUI GOOGLE',
                      onPressed: () {
                        print('Button-Login pressed ...');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      width: 340,
                      height: 70,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Anda akan menerima email konfirmasi yang berisikan link untuk mengaktifkan akun',
                            style: darkTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
