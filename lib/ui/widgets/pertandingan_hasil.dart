import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/jadwal_hasil.dart';
import 'package:gosports/ui/widgets/cardlivematch_hasil.dart';
import 'package:gosports/ui/widgets/cardmatch_hasil.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:page_transition/page_transition.dart';

class PertandinganHasil extends StatefulWidget {
  const PertandinganHasil({Key? key}) : super(key: key);

  @override
  State<PertandinganHasil> createState() => _PertandinganHasilState();
}

class _PertandinganHasilState extends State<PertandinganHasil> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 23,
            ),
            const DateCard(date: 'Hari Ini'),
            MatchLiveCardHasil(
              status: 'Live',
              logo1: 'assets/warriorsTim.png',
              logo2: 'assets/grizzliesTim.png',
              namatim1: 'WARRIORS',
              namatim2: 'GRIZZLIES',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
            MatchLiveCardHasil(
              status: 'Live',
              logo1: 'assets/bucksTim.png',
              logo2: 'assets/lakersTim.png',
              namatim1: 'BUCKS',
              namatim2: 'LAKERS',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
            const SizedBox(
              height: 17,
            ),
            const DateCard(
              date: 'Minggu, 17 April 2022',
            ),
            MatchCardHasil(
              status: '11:20',
              logo1: 'assets/rocketsTim.png',
              logo2: 'assets/kingsTim.png',
              namatim1: 'ROCKETS',
              namatim2: 'KINGS',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
            MatchCardHasil(
              status: '14:30',
              logo1: 'assets/miamiTim.png',
              logo2: 'assets/broklynTim.png',
              namatim1: 'MIAMI',
              namatim2: 'BROKLYN',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
            MatchCardHasil(
              status: '18:30',
              logo1: 'assets/utahTim.png',
              logo2: 'assets/bullsTim.png',
              namatim1: 'UTAH',
              namatim2: 'BULLS',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
          ],
        )
      ],
    );
  }
}
