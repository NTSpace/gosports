import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/ui/pages/pertandingan.dart';
import 'package:gosports/ui/widgets/ingat_saya.dart';
import 'package:gosports/ui/pages/lupa_password.dart';
import 'package:gosports/ui/pages/signup_page.dart';
import 'package:gosports/ui/widgets/login_google.dart';
import 'package:page_transition/page_transition.dart';
import 'package:gosports/ui/widgets/button_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailAddressControler;
  late TextEditingController passwordControler;
  late bool passwordVisibility;
  late bool checkboxListTileValue;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressControler = TextEditingController();
    passwordControler = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        resizeToAvoidBottomInset: false,
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
                  ),
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
              children: <Widget>[
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
                          'MASUK',
                          style: GoogleFonts.montserrat(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
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
                            child: const SignupPage(),
                          ),
                        );
                      },
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
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    height: 2,
                    decoration: BoxDecoration(
                      color: kOrangeColor,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: kDarkColor,
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: const AlignmentDirectional(-0.85, 0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'MASUK',
                        style: darkTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 26,
                      left: 24,
                      top: 15,
                    ),
                    child: TextFormField(
                      controller: emailAddressControler,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        floatingLabelStyle: TextStyle(
                          color: kOrangeColor,
                        ),
                        labelStyle: darkTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        hintText: 'Masukkan email...',
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
                            color: kOrangeColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(24),
                      ),
                      style: GoogleFonts.lexendDeca(
                        fontSize: 14,
                        color: kBlackColor,
                        fontWeight: regular,
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
                      controller: passwordControler,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(
                          color: kOrangeColor,
                        ),
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
                            color: kDarkColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kOrangeColor,
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
                      style: GoogleFonts.lexendDeca(
                        fontSize: 14,
                        fontWeight: regular,
                        color: kBlackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Theme(
                              data: ThemeData(
                                unselectedWidgetColor: const Color(0xFF95A1AC),
                              ),
                              child: const IngatSaya(),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: const Duration(milliseconds: 500),
                                  reverseDuration:
                                      const Duration(milliseconds: 500),
                                  child: const LupaPassword(),
                                ),
                              );
                            },
                            child:
                                Text('Lupa Password ?', style: darkTextStyle),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: LoginButton(
                      text: 'MASUK',
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 0),
                            reverseDuration: const Duration(milliseconds: 0),
                            child: const Pertandingan(),
                          ),
                        );
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
                                  decoration: BoxDecoration(
                                    color: kDarkColor,
                                  ),
                                ),
                                Text(
                                  'ATAU',
                                  textAlign: TextAlign.center,
                                  style: darkTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 12,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  width: 138,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: kDarkColor,
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
                    child: GoogleLogin(
                      text: 'MASUK MELALUI GOOGLE',
                      onPressed: () {
                        print('Button-Login pressed ...');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum memiliki akun? ',
                          style: darkTextStyle.copyWith(
                              fontWeight: semibold, fontSize: 16),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: const Duration(milliseconds: 0),
                                reverseDuration:
                                    const Duration(milliseconds: 0),
                                child: const SignupPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Daftar Sekarang',
                            style: orangeTextStyle.copyWith(
                              fontWeight: semibold,
                            ),
                          ),
                        ),
                      ],
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
