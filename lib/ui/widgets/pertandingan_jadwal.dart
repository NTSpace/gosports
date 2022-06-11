import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/detaillineuptim1.dart';
import 'package:gosports/ui/pages/point.dart';
import 'package:gosports/ui/widgets/cardlivematch.dart';
import 'package:gosports/ui/widgets/cardmatch.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:page_transition/page_transition.dart';

class PertandinganJadwal extends StatefulWidget {
  const PertandinganJadwal({Key? key}) : super(key: key);

  @override
  State<PertandinganJadwal> createState() => _PertandinganJadwalState();
}

class _PertandinganJadwalState extends State<PertandinganJadwal> {
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
            MatchLiveCard(
              status: 'Live',
              logo1: 'assets/warriorsTim.png',
              logo2: 'assets/grizzliesTim.png',
              namatim1: 'WARRIORS',
              namatim2: 'GRIZZLIES',
              onClicked: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      duration: const Duration(milliseconds: 0),
                      reverseDuration: const Duration(milliseconds: 0),
                      child: const PointPage()),
                );
              },
            ),
            MatchLiveCard(
              status: 'Live',
              logo1: 'assets/bucksTim.png',
              logo2: 'assets/lakersTim.png',
              namatim1: 'BUCKS',
              namatim2: 'LAKERS',
              onClicked: () {},
            ),
            const SizedBox(
              height: 17,
            ),
            const DateCard(
              date: 'Minggu, 17 April 2022',
            ),
            MatchCard(
                status: '11:20',
                logo1: 'assets/rocketsTim.png',
                logo2: 'assets/kingsTim.png',
                namatim1: 'ROCKETS',
                namatim2: 'KINGS',
                onClicked: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const DetailLineup()),
                  );
                }),
            MatchCard(
                status: '14:30',
                logo1: 'assets/miamiTim.png',
                logo2: 'assets/broklynTim.png',
                namatim1: 'MIAMI',
                namatim2: 'BROKLYN',
                onClicked: () {}),
            MatchCard(
              status: '18:30',
              logo1: 'assets/utahTim.png',
              logo2: 'assets/bullsTim.png',
              namatim1: 'UTAH',
              namatim2: 'BULLS',
              onClicked: () {},
            ),
          ],
        ),
      ],
    );
  }
}
