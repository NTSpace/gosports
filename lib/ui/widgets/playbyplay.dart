import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/playbyplay_card.dart';

class PlayByPlay extends StatefulWidget {
  const PlayByPlay({Key? key}) : super(key: key);

  @override
  State<PlayByPlay> createState() => _PlayByPlayState();
}

class _PlayByPlayState extends State<PlayByPlay> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController pbpController = TabController(vsync: this, length: 4);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(23, 19, 23, 0),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
          ),
          child: TabBar(
            indicatorWeight: 2,
            labelColor: kOrangeColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: kOrangeColor,
            controller: pbpController,
            tabs: const [
              Tab(
                text: 'Q1',
              ),
              Tab(
                text: 'Q2',
              ),
              Tab(
                text: 'Q3',
              ),
              Tab(
                text: 'Q4',
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height * 0.30,
          child: TabBarView(
            controller: pbpController,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 31,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'WAKTU',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: Text(
                            'DESKRIPSI',
                            style: blackTextStyle.copyWith(
                              fontWeight: semibold,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          'SKOR',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 31,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'WAKTU',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: Text(
                            'DESKRIPSI',
                            style: blackTextStyle.copyWith(
                              fontWeight: semibold,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          'SKOR',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 31,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'WAKTU',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: Text(
                            'DESKRIPSI',
                            style: blackTextStyle.copyWith(
                              fontWeight: semibold,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          'SKOR',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    height: 31,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'WAKTU',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: Text(
                            'DESKRIPSI',
                            style: blackTextStyle.copyWith(
                              fontWeight: semibold,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          'SKOR',
                          style: blackTextStyle.copyWith(
                            fontWeight: semibold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        ),
                        PlaybyplayCard(
                          nomorpg: '12',
                          logo: 'assets/grizzliesTim.png',
                          namapemain: 'Dimas indra',
                          waktu: '5',
                          play: '3 Point',
                          skor: '0-3',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
