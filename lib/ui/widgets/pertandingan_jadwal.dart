import 'package:flutter/material.dart';
import 'package:gosports/providers/pertandingan_provider.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/detaillineuptim1.dart';
import 'package:gosports/ui/pages/point.dart';
import 'package:gosports/ui/widgets/cardlistpertandingan_jadwal.dart';
import 'package:gosports/ui/widgets/cardlistpertandingan_live.dart';
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
            ListPertandinganLive(),
            // const SizedBox(
            //   height: 17,
            // ),
            // ListPertandinganJadwal()
          ],
        ),
      ],
    );
  }
}
