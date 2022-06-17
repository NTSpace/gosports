import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/hasil.dart';
import 'package:gosports/ui/widgets/boxscore.dart';
import 'package:gosports/ui/widgets/cardtim.dart';
import 'package:gosports/ui/widgets/playbyplay.dart';
import 'package:gosports/ui/widgets/scoreboard_jadwalhasil.dart';
import 'package:page_transition/page_transition.dart';

class Hasil2 extends StatefulWidget {
  const Hasil2({Key? key}) : super(key: key);

  @override
  State<Hasil2> createState() => _Hasil2State();
}

class _Hasil2State extends State<Hasil2> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(vsync: this, length: 2);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kDarkColor,
            leading: IconButton(
              icon: Image.asset(
                'assets/back_icon.png',
                width: 12,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'PERTANDINGAN',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: kGreyColor,
          body: Column(
            children: [
              const ScoreboardHasilJadwal(
                namatima: 'BUCKS',
                namatimb: 'LAKERS',
                logotima: 'assets/bucksTim.png',
                logotimb: 'assets/lakersTim.png',
                skorpoin1: 120,
                skorpoin2: 105,
              ),
              Container(
                color: kWhiteColor,
                child: TabBar(
                  labelColor: kOrangeColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: kOrangeColor,
                  controller: tabController,
                  tabs: const [
                    Tab(text: 'Box Score'),
                    Tab(text: 'Play-By-Play'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.40,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          CardTim(
                            logo1: 'assets/bucksTim.png',
                            namatim1: 'Bucks',
                            namatim2: 'Lakers',
                            logo2: 'assets/lakersTim.png',
                            onClicked: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: const Duration(milliseconds: 0),
                                  reverseDuration:
                                      const Duration(milliseconds: 0),
                                  child: const Hasil(),
                                ),
                              );
                            },
                            opacity: 0.5,
                            opacity2: 1.0,
                            color1: Colors.grey,
                            color2: kBlackColor,
                            onClicked2: () {},
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            width: double.infinity,
                            height: 31,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  'NO.',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semibold,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 130,
                                  child: Text(
                                    'PEMAIN',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: semibold,
                                      fontSize: 10,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Text(
                                  'MINS',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semibold,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'REB',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semibold,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'AST',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semibold,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'POINT',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semibold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: const <Widget>[
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                                BoxScore(
                                  nomorpg: 5,
                                  mins: 12,
                                  namapemain: 'Dimas Indra',
                                  reb: 12,
                                  ast: 14,
                                  point1: 25,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const PlayByPlay(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
