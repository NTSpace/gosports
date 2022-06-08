import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/pertandingan_jadwal.dart';
import 'package:gosports/ui/pages/profile.dart';
import 'package:page_transition/page_transition.dart';

class DetailLineup extends StatefulWidget {
  const DetailLineup({Key? key}) : super(key: key);

  @override
  State<DetailLineup> createState() => _DetailLineupState();
}

class _DetailLineupState extends State<DetailLineup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kGreyColor,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: AppBar(
            backgroundColor: kDarkColor,
            elevation: 10,
            leading: IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: const Duration(milliseconds: 500),
                    reverseDuration: const Duration(milliseconds: 500),
                    child: const PertandinganJadwal(),
                  ),
                );
              },
              icon: Image.asset(
                'assets/back_icon.png',
                width: 15,
              ),
            ),
            flexibleSpace: Center(
              child: Text(
                'Rockets VS Bucks',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
