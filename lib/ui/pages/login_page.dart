import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gosports/services/auth_service.dart';
import 'package:gosports/shared/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/ui/pages/main_page.dart';
import 'package:gosports/ui/widgets/ingat_saya.dart';
import 'package:gosports/ui/pages/lupa_password.dart';
import 'package:gosports/ui/pages/signup_page.dart';
import 'package:gosports/ui/widgets/login_google.dart';
import 'package:page_transition/page_transition.dart';
import 'package:gosports/ui/widgets/button_login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  // final _baseUrl = 'https://auth-service.gosports.id/auth/login';
  // handleSignUp() async {
  //   http.Response response = await AuthService.login(
  //     emailAddressControler.text,
  //     passwordControler.text,
  //   );
  //   if (response.statusCode == 200) {
  //     const snackBar = SnackBar(
  //       content: Text('Login Berhasil'),
  //     );
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //     await Navigator.push(
  //       context,
  //       PageTransition(
  //         type: PageTransitionType.fade,
  //         duration: const Duration(milliseconds: 0),
  //         reverseDuration: const Duration(milliseconds: 0),
  //         child: const MainPage(),
  //       ),
  //     );
  //   } else {
  //     const snackBar = SnackBar(
  //       content: Text('Invalid input'),
  //     );
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   }
  // }

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

  handleSignUp() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    final _token = sharedPreferences.getString("token");
    var jsonResponse = null;

    http.Response response = await AuthService.login(
      emailAddressControler.text,
      passwordControler.text,
    );
    if (response.statusCode == 200) {
      const snackBar = SnackBar(
        content: Text('Login berhasil'),
      );
      jsonResponse = json.decode(response.body);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      sharedPreferences.setString("token", jsonResponse['token']['token']);
      final id = jsonResponse['id'].toString();
      sharedPreferences.setString("id", id);
      // ignore: use_build_context_synchronously
      await Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 0),
          reverseDuration: const Duration(milliseconds: 0),
          child: const MainPage(),
        ),
      );
    } else {
      const snackBar = SnackBar(
        content: Text('Invalid input'),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(vsync: this, length: 2);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(66),
          child: AppBar(
            automaticallyImplyLeading: false,
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
            TabBar(
              labelColor: kOrangeColor,
              indicatorWeight: 2,
              unselectedLabelColor: Colors.grey,
              indicatorColor: kOrangeColor,
              controller: tabController,
              tabs: const [
                Tab(text: 'MASUK'),
                Tab(text: 'DAFTAR'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Align(
                              alignment: const AlignmentDirectional(-0.85, 0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'MASUK',
                                  style: greyTextStyle.copyWith(
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
                                keyboardType: TextInputType.emailAddress,
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
                                keyboardType: TextInputType.visiblePassword,
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
                                    color: const Color.fromARGB(
                                        151, 116, 113, 113),
                                  ),
                                  hintText: 'Masukkan Password...',
                                  hintStyle: GoogleFonts.lexendDeca(
                                    fontSize: 16,
                                    fontWeight: regular,
                                    color: const Color.fromARGB(
                                        151, 116, 113, 113),
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
                                      () => passwordVisibility =
                                          !passwordVisibility,
                                    ),
                                    child: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: const Color.fromARGB(
                                          151, 116, 113, 113),
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
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: Theme(
                                        data: ThemeData(
                                          unselectedWidgetColor:
                                              const Color(0xFF95A1AC),
                                        ),
                                        child: const IngatSaya(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.rightToLeft,
                                            duration: const Duration(
                                                milliseconds: 500),
                                            reverseDuration: const Duration(
                                                milliseconds: 500),
                                            child: const LupaPassword(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Lupa Password ?',
                                        style: mainTextStyle.copyWith(
                                          fontSize: 14,
                                          fontWeight: regular,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: LoginButton(
                                text: 'MASUK',
                                onPressed: () => handleSignUp(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 5, 0, 5),
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
                                            margin:
                                                const EdgeInsets.only(right: 8),
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
                                            margin:
                                                const EdgeInsets.only(left: 8),
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
                              child: GoogleLogin(
                                text: 'MASUK MELALUI GOOGLE',
                                onPressed: () {
                                  print('Button-Login pressed ...');
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 50, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Belum memiliki akun? ',
                                    style: mainTextStyle.copyWith(
                                        fontWeight: semibold, fontSize: 16),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration:
                                              const Duration(milliseconds: 0),
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
                      ],
                    ),
                  ),
                  const SignupPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
