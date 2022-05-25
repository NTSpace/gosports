import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/kirim_email.dart';

class AturUlangPass extends StatefulWidget {
  const AturUlangPass({Key? key}) : super(key: key);

  @override
  State<AturUlangPass> createState() => _AturUlangPassState();
}

class _AturUlangPassState extends State<AturUlangPass> {
  late TextEditingController passwordControler;
  late bool passwordVisibility;
  late TextEditingController cpasswordControler;
  late bool cpasswordVisibility;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    passwordControler = TextEditingController();
    passwordVisibility = false;
    cpasswordControler = TextEditingController();
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
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: const AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15),
                    child: Text(
                      '> ATUR ULANG PASSWORD',
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
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: KirimButton(
                    text: 'SIMPAN',
                    onPressed: () {
                      print('Button-Login pressed ...');
                    },
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
