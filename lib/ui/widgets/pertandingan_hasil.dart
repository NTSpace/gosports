import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/hasil.dart';
import 'package:gosports/ui/widgets/cardlistpertandingan_hasil.dart';
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
            ListPertandinganHasil(),
            const SizedBox(
              height: 17,
            ),
            ListPertandinganHasil(),
          ],
        )
      ],
    );
  }
}
