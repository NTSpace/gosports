import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/lineup.dart';
import 'package:gosports/ui/pages/pont2.dart';
import 'package:gosports/ui/pages/scoring.dart';
import 'package:gosports/ui/widgets/scoreboard.dart';
import 'package:gosports/ui/widgets/simpan_button.dart';
import 'package:gosports/ui/widgets/teamvs.dart';
import 'package:page_transition/page_transition.dart';

class PointPage extends StatefulWidget {
  const PointPage({Key? key}) : super(key: key);

  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            const ScoreBoard(),
            const SizedBox(
              height: 14,
            ),
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
                        reverseDuration: const Duration(milliseconds: 0),
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
            Padding(
              padding: const EdgeInsets.only(top: 68),
              child: SimpanButton(
                text: 'MULAI PERTANDINGAN',
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: const Duration(milliseconds: 0),
                      reverseDuration: const Duration(milliseconds: 0),
                      child: const ScoringPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
