import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/detaillineuptim1.dart';
import 'package:gosports/ui/pages/hasil.dart';
import 'package:gosports/ui/pages/point.dart';
import 'package:gosports/ui/widgets/cardlivematch.dart';
import 'package:gosports/ui/widgets/cardlivematch_hasil.dart';
import 'package:gosports/ui/widgets/cardmatch.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:page_transition/page_transition.dart';

class ListPertandinganJadwal extends StatelessWidget {
  const ListPertandinganJadwal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: <Widget>[
          DateCard(
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
    );
  }
}
