import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/lineup.dart';
import 'package:gosports/ui/pages/point.dart';
import 'package:gosports/ui/pages/scoring.dart';
import 'package:gosports/ui/widgets/scoreboard.dart';
import 'package:gosports/ui/widgets/simpan_button.dart';
import 'package:gosports/ui/widgets/teamvs.dart';
import 'package:page_transition/page_transition.dart';

class Point2Page extends StatefulWidget {
  const Point2Page({Key? key}) : super(key: key);

  @override
  State<Point2Page> createState() => _Point2PageState();
}

class _Point2PageState extends State<Point2Page> {
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
                  onClicked1: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: const Duration(milliseconds: 0),
                          reverseDuration: const Duration(milliseconds: 0),
                          child: const PointPage()),
                    );
                  },
                  opacity: 0.5,
                  opacity2: 1.0,
                  onClicked2: () {},
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
