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

class ListPertandinganLive extends StatefulWidget {
  const ListPertandinganLive({Key? key}) : super(key: key);

  @override
  State<ListPertandinganLive> createState() => _ListPertandinganLiveState();
}

class _ListPertandinganLiveState extends State<ListPertandinganLive> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    context.read<PertandinganProvider>().getPertandinganHasil();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: DateCard(
            date: 'Hari Ini',
          ),
        ),
        Container(
          height: 450,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Consumer<PertandinganProvider>(
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
          ),
        ),
      ],
    );
  }
}
