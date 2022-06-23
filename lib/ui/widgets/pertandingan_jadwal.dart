import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:gosports/models/pertandingan.dart';
import 'package:gosports/providers/pertandingan_provider.dart';
import 'package:gosports/providers/tim_provider.dart';
=======
import 'package:gosports/shared/theme.dart';
>>>>>>> 0e74a640af652d19a8b0dfbd2d4664d36e24b7d5
import 'package:gosports/ui/pages/detaillineuptim1.dart';
import 'package:gosports/ui/pages/point.dart';
import 'package:gosports/ui/widgets/cardlistpertandingan_jadwal.dart';
import 'package:gosports/ui/widgets/cardlistpertandingan_live.dart';
import 'package:gosports/ui/widgets/cardlivematch.dart';
import 'package:gosports/ui/widgets/cardmatch.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class PertandinganJadwal extends StatefulWidget {
  const PertandinganJadwal({Key? key}) : super(key: key);

  @override
  State<PertandinganJadwal> createState() => _PertandinganJadwalState();
}

class _PertandinganJadwalState extends State<PertandinganJadwal> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    context.read<PertandinganProvider>().getPertandingan();
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Consumer<PertandinganProvider>(
      builder: (context, value, child) {
        final listPertandingan = value.pertandingan;
        return ListView.builder(
          itemCount: listPertandingan.length,
          itemBuilder: (context, index) {
            final PertandinganModel item = listPertandingan[index];
            return MatchLiveCard(
              item: item,
              onClicked: () {},
            );
          },
        );
      },
=======
    return ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 23,
            ),
            ListPertandinganLive(),
            const SizedBox(
              height: 17,
            ),
            ListPertandinganJadwal()
          ],
        ),
      ],
>>>>>>> 0e74a640af652d19a8b0dfbd2d4664d36e24b7d5
    );
  }
}
