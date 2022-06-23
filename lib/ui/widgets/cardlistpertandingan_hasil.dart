import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/hasil.dart';
import 'package:gosports/ui/widgets/cardlivematch_hasil.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:page_transition/page_transition.dart';

class ListPertandinganHasil extends StatelessWidget {
  const ListPertandinganHasil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: <Widget>[
          DateCard(date: 'Hari Ini'),
          MatchLiveCardHasil(
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
                    child: const Hasil()),
              );
            },
            skor1: '120',
            skor2: '105',
          ),
          MatchLiveCardHasil(
            status: 'Live',
            logo1: 'assets/bucksTim.png',
            logo2: 'assets/lakersTim.png',
            namatim1: 'BUCKS',
            namatim2: 'LAKERS',
            onClicked: () async {
              await Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 0),
                    reverseDuration: const Duration(milliseconds: 0),
                    child: const Hasil()),
              );
            },
            skor1: '120',
            skor2: '105',
          ),
        ],
      ),
    );
  }
}
