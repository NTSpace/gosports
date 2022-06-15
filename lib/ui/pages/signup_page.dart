import 'package:flutter/material.dart';
import 'package:gosports/providers/auth_provider.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/main_page.dart';
import 'package:gosports/ui/widgets/button_signup.dart';
import 'package:page_transition/page_transition.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';
import '../widgets/signup_google.dart';
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
    emailAddressControler = TextEditingController(text: '');
    passwordControler = TextEditingController(text: '');
    cpasswordControler = TextEditingController(text: '');
    passwordVisibility = false;
    cpasswordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of(context);

    handleSignUp() async {
      if (await authProvider.register(
        email: emailAddressControler.text,
        password: passwordControler.text,
        konfirmasiPassword: cpasswordControler.text,
        cabor: 'basketball',
        nama: 'users',
      )) {
        await Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 0),
            reverseDuration: const Duration(milliseconds: 0),
            child: const MainPage(),
          ),
        );
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
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
                    style: greyTextStyle.copyWith(
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
                    floatingLabelStyle: TextStyle(
                      color: kOrangeColor,
                    ),
                    labelStyle: GoogleFonts.montserrat(
                      color: const Color(0xff8e8e8e),
                      fontSize: 16,
                    ),
                    hintText: 'Masukkan email...',
                    hintStyle: GoogleFonts.montserrat(
                      color: const Color(0xff8e8e8e),
                      fontSize: 16,
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
                        color: kOrangeColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.all(24),
                  ),
                  style: greyTextStyle,
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
                    floatingLabelStyle: TextStyle(
                      color: kOrangeColor,
                    ),
                    labelStyle: GoogleFonts.montserrat(
                      color: const Color(0xff8e8e8e),
                      fontSize: 16,
                    ),
                    hintText: 'Masukkan email...',
                    hintStyle: GoogleFonts.montserrat(
                      color: const Color(0xff8e8e8e),
                      fontSize: 16,
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
                  style: greyTextStyle,
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
                    floatingLabelStyle: TextStyle(
                      color: kOrangeColor,
                    ),
                    labelStyle: GoogleFonts.montserrat(
                      color: const Color(0xff8e8e8e),
                      fontSize: 16,
                    ),
                    hintText: 'Masukkan Konfirmasi Password...',
                    hintStyle: GoogleFonts.montserrat(
                      color: const Color(0xff8e8e8e),
                      fontSize: 16,
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
                        color: kOrangeColor,
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
                  style: greyTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ButtonSignup(
                  text: 'BUAT AKUN',
                  onPressed: () => handleSignUp(),
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
                                color: kTextColor,
                              ),
                            ),
                            Text(
                              'ATAU',
                              textAlign: TextAlign.center,
                              style: mainTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              width: 138,
                              height: 1,
                              decoration: BoxDecoration(
                                color: kTextColor,
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
                        style: mainTextStyle.copyWith(
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
    );
  }
}
