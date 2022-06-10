import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/lineup_pemain.dart';
import 'package:gosports/ui/pages/pergantian.dart';
import 'package:page_transition/page_transition.dart';

class Lineup extends StatefulWidget {
  const Lineup({Key? key}) : super(key: key);

  @override
  State<Lineup> createState() => _LineupState();
}

class _LineupState extends State<Lineup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 26),
      width: double.infinity,
      height: 186,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LineUpPemain(
                  nomorpg: '00',
                  namapemain: 'Nama Pemain',
                  onClicked: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const PergantianPage(),
                      ),
                    );
                  },
                ),
                LineUpPemain(
                  nomorpg: '00',
                  namapemain: 'Nama Pemain',
                  onClicked: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const PergantianPage(),
                      ),
                    );
                  },
                ),
                LineUpPemain(
                  nomorpg: '00',
                  namapemain: 'Nama Pemain',
                  onClicked: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const PergantianPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LineUpPemain(
                  nomorpg: '00',
                  namapemain: 'Nama Pemain',
                  onClicked: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const PergantianPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                LineUpPemain(
                  nomorpg: '00',
                  namapemain: 'Nama Pemain',
                  onClicked: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const PergantianPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
