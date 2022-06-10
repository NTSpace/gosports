// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/cardnamatim.dart';
import 'package:gosports/ui/pages/lineup.dart';
import 'package:gosports/ui/pages/pont2.dart';
import 'package:gosports/ui/widgets/dialog_shot.dart';
import 'package:gosports/ui/widgets/playbyplay_card.dart';
import 'package:gosports/ui/widgets/scoreboard.dart';
import 'package:gosports/ui/widgets/teamvs.dart';
import 'package:page_transition/page_transition.dart';

class ScoringPage extends StatefulWidget {
  const ScoringPage({Key? key}) : super(key: key);

  @override
  State<ScoringPage> createState() => _ScoringPageState();
}

class _ScoringPageState extends State<ScoringPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(vsync: this, length: 3);
    TabController _pbpController = TabController(vsync: this, length: 4);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kGreyColor,
          body: Column(
            children: [
              const ScoreBoard(),
              Container(
                color: kWhiteColor,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: kOrangeColor,
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'Scoring'),
                    Tab(text: 'Pergantian'),
                    Tab(text: 'Play-By-Play')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.40,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: <Widget>[
                        Namatimsc(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 155,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1E2024),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextButton(
                                child: Text(
                                  'SHOT',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 24,
                                  ),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => DialogShot(),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 155,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1E2024),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextButton(
                                child: Text(
                                  'SHOT',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 24,
                                  ),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => DialogShot(),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kRedColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  child: Text(
                                    'F',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kRedColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  child: Text(
                                    'F',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  child: Text(
                                    'T',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  child: Text(
                                    'T',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TeamVs(
                              logo1: 'assets/warriorsTim.png',
                              logo2: 'assets/grizzliesTim.png',
                              onClicked1: () {},
                              opacity: 1.0,
                              opacity2: 0.5,
                              onClicked2: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: const Duration(milliseconds: 0),
                                    reverseDuration:
                                        const Duration(milliseconds: 0),
                                    child: const Point2Page(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Lineup(),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(23, 19, 23, 0),
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                            ),
                          ),
                          child: TabBar(
                            indicatorWeight: 2,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: kOrangeColor,
                            controller: _pbpController,
                            tabs: [
                              Tab(
                                text: 'Q1',
                              ),
                              Tab(
                                text: 'Q2',
                              ),
                              Tab(
                                text: 'Q3',
                              ),
                              Tab(
                                text: 'Q4',
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: MediaQuery.of(context).size.height * 0.30,
                          child: TabBarView(
                            controller: _pbpController,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    width: double.infinity,
                                    height: 31,
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          'WAKTU',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semibold,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Container(
                                          width: 130,
                                          child: Text(
                                            'DESKRIPSI',
                                            style: blackTextStyle.copyWith(
                                              fontWeight: semibold,
                                              fontSize: 10,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Text(
                                          'SKOR',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semibold,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView(
                                      children: [
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    width: double.infinity,
                                    height: 31,
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          'WAKTU',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semibold,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Container(
                                          width: 130,
                                          child: Text(
                                            'DESKRIPSI',
                                            style: blackTextStyle.copyWith(
                                              fontWeight: semibold,
                                              fontSize: 10,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Text(
                                          'SKOR',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semibold,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView(
                                      children: [
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    width: double.infinity,
                                    height: 31,
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          'WAKTU',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semibold,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Container(
                                          width: 130,
                                          child: Text(
                                            'DESKRIPSI',
                                            style: blackTextStyle.copyWith(
                                              fontWeight: semibold,
                                              fontSize: 10,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Text(
                                          'SKOR',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semibold,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView(
                                      children: [
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    width: double.infinity,
                                    height: 31,
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          'WAKTU',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semibold,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Container(
                                          width: 130,
                                          child: Text(
                                            'DESKRIPSI',
                                            style: blackTextStyle.copyWith(
                                              fontWeight: semibold,
                                              fontSize: 10,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Text(
                                          'SKOR',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semibold,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView(
                                      children: [
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        ),
                                        PlaybyplayCard(
                                          nomorpg: '12',
                                          logo: 'assets/grizzliesTim.png',
                                          namapemain: 'Dimas indra',
                                          waktu: '5',
                                          play: '3 Point',
                                          skor: '0-3',
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
