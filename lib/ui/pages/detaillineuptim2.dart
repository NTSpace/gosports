import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/detaillineuptim1.dart';
import 'package:gosports/ui/widgets/cardpemain.dart';
import 'package:gosports/ui/widgets/cardtim2.dart';
import 'package:page_transition/page_transition.dart';

class DetailLineup2 extends StatefulWidget {
  const DetailLineup2({Key? key}) : super(key: key);

  @override
  State<DetailLineup2> createState() => _DetailLineup2State();
}

class _DetailLineup2State extends State<DetailLineup2> {
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/scoreboard.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 43),
                    child: Text(
                      'SEMI FINAL DBL',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    child: Text(
                      'SENIN, 10 MEI 2022',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/rocketsTim.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 3),
                              child: Text(
                                'ROCKETS',
                                style: whiteTextStyle.copyWith(
                                  fontWeight: semibold,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 22),
                          child: Text(
                            '000',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(
                            '-',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(
                            '000',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 22),
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/kingsTim.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 3, left: 22),
                              child: Text(
                                'KINGS',
                                style: whiteTextStyle.copyWith(
                                  fontWeight: semibold,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 24,
                  ),
                  CardTim2(
                    logo1: 'assets/rocketsTim.png',
                    namatim1: 'Rockets',
                    namatim2: 'Kings',
                    logo2: 'assets/kingsTim.png',
                    onClicked: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 0),
                            reverseDuration: const Duration(milliseconds: 0),
                            child: const DetailLineup()),
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
            )
          ],
        ),
      ),
    );
  }
}
