import 'package:flutter/material.dart';
import 'package:gosports/models/pertandingan.dart';
import 'package:gosports/providers/pertandingan_provider.dart';
import 'package:gosports/ui/pages/hasil.dart';
import 'package:gosports/ui/widgets/cardlivematch_hasil.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ListPertandinganHasil extends StatefulWidget {
  const ListPertandinganHasil({Key? key}) : super(key: key);

  @override
  State<ListPertandinganHasil> createState() => _ListPertandinganHasilState();
}

class _ListPertandinganHasilState extends State<ListPertandinganHasil> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    context.read<PertandinganProvider>().getPertandinganHasil();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
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
                    return MatchLiveCardHasil(
                      item: item,
                      onClicked: () {},
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
