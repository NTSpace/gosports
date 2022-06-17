import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/detaillineuptim2.dart';
import 'package:gosports/ui/widgets/cardpemain.dart';
import 'package:gosports/ui/widgets/cardtim.dart';
import 'package:gosports/ui/widgets/scoreboard_jadwalhasil.dart';
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
                Navigator.pop(context);
              },
              icon: Image.asset(
                'assets/back_icon.png',
                width: 15,
              ),
            ),
            flexibleSpace: Center(
              child: Text(
                'ROCKETS VS KINGS',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const ScoreboardHasilJadwal(
              namatima: 'ROCKETS',
              namatimb: 'KINGS',
              logotima: 'assets/rocketsTim.png',
              logotimb: 'assets/kingsTim.png',
              skorpoin1: 000,
              skorpoin2: 000,
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 24,
                  ),
                  CardTim(
                    logo1: 'assets/rocketsTim.png',
                    namatim1: 'Rockets',
                    namatim2: 'Kings',
                    logo2: 'assets/kingsTim.png',
                    onClicked: () {},
                    opacity: 1.0,
                    opacity2: 0.5,
                    color1: kBlackColor,
                    color2: Colors.grey,
                    onClicked2: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 0),
                            reverseDuration: const Duration(milliseconds: 0),
                            child: const DetailLineup2()),
                      );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 31,
                    color: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            'NOMOR',
                            style: blackTextStyle.copyWith(
                              fontWeight: semibold,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          'PEMAIN',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            'POSISI',
                            style: blackTextStyle.copyWith(
                              fontWeight: semibold,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const PemainCard(
                      nomorpg: '6',
                      fotopemain: 'assets/player1.png',
                      namapemain: 'Roshidinial',
                      posisi: 'guard'),
                  const PemainCard(
                      nomorpg: '10',
                      fotopemain: 'assets/player2.png',
                      namapemain: 'Serge Ibaka',
                      posisi: 'forward'),
                  const PemainCard(
                      nomorpg: '13',
                      fotopemain: 'assets/player3.png',
                      namapemain: 'Jordan Nwora',
                      posisi: 'forward'),
                  const PemainCard(
                      nomorpg: '8',
                      fotopemain: 'assets/player4.png',
                      namapemain: 'Grayson Allen',
                      posisi: 'guard'),
                  const PemainCard(
                      nomorpg: '10',
                      fotopemain: 'assets/player5.png',
                      namapemain: 'Westlesy Matthews',
                      posisi: 'guard'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
