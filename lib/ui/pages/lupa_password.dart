import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/kirim_email.dart';

class LupaPassword extends StatefulWidget {
  const LupaPassword({Key? key}) : super(key: key);

  @override
  State<LupaPassword> createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
  late TextEditingController emailAddressControler;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressControler = TextEditingController();
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
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: const AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      'LUPA PASSWORD',
                      style: GoogleFonts.montserrat(
                          fontSize: 23,
                          fontWeight: semibold,
                          color: kBlackColor),
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
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: KirimButton(
                    text: 'KIRIM',
                    onPressed: () {
                      print('Button-Login pressed ...');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 50, 0, 0),
                  child: Container(
                    alignment: AlignmentDirectional.centerStart,
                    width: 340,
                    height: 70,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Anda akan menerima email yang berisikan link untuk melakukan pengaturan ulang password anda',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: bold,
                            color: kBlackColor,
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
    );
  }
}
