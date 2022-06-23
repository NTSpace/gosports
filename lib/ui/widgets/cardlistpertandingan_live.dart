import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/hasil.dart';
import 'package:gosports/ui/pages/point.dart';
import 'package:gosports/ui/widgets/cardlivematch.dart';
import 'package:gosports/ui/widgets/cardlivematch_hasil.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:page_transition/page_transition.dart';

class ListPertandinganLive extends StatelessWidget {
  const ListPertandinganLive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: <Widget>[
          DateCard(date: 'Hari Ini'),
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
        ],
      ),
    );
  }
}
