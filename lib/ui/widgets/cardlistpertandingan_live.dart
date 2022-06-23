import 'package:flutter/material.dart';
import 'package:gosports/models/pertandingan.dart';
import 'package:gosports/providers/pertandingan_provider.dart';
import 'package:gosports/ui/pages/hasil.dart';
import 'package:gosports/ui/pages/point.dart';
import 'package:gosports/ui/widgets/cardlivematch.dart';
import 'package:gosports/ui/widgets/cardlivematch_hasil.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ListPertandinganLive extends StatelessWidget {
  const ListPertandinganLive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PertandinganProvider>(
      builder: (context, value, child) {
        final listPertandingan = value.pertandingan;
        return ListView.builder(
            itemCount: listPertandingan.length,
            itemBuilder: ((context, index) {
              final PertandinganModel item = listPertandingan[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: <Widget>[
                    DateCard(date: 'Hari Ini'),
                    MatchLiveCard(item: item, onClicked: () {})
                  ],
                ),
              );
            }));
      },
    );
  }
}
