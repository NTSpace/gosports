import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/pertandingan_jadwal.dart';
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
  late TextEditingController searchController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kDarkColor,
          title: Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Pertandingan',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
              width: MediaQuery.of(context).size.width,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xff1E2024),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    bottom: 7,
                  ),
                  height: 36,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukan pencarian Anda disini',
                      hintStyle: GoogleFonts.montserrat(
                        color: const Color(0xff9A9DA2),
                        fontSize: 10,
                      ),
                      border: InputBorder.none,
                      suffixIcon: const Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                    ),
                    style: greyTextStyle.copyWith(
                      color: kWhiteColor,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            duration: const Duration(milliseconds: 0),
                            reverseDuration: const Duration(milliseconds: 0),
                            child: const PertandinganJadwal()),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: kGreyColor,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'JADWAL',
                            style: GoogleFonts.montserrat(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: kOrangeColor,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HASIL',
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            const DateCard(date: 'Hari Ini'),
            MatchLiveCardHasil(
              status: 'Live',
              logo1: 'assets/warriorsTim.png',
              logo2: 'assets/grizzliesTim.png',
              namatim1: 'WARRIORS',
              namatim2: 'GRIZZLIES',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
            MatchLiveCardHasil(
              status: 'Live',
              logo1: 'assets/bucksTim.png',
              logo2: 'assets/lakersTim.png',
              namatim1: 'BUCKS',
              namatim2: 'LAKERS',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
            const SizedBox(
              height: 17,
            ),
            const DateCard(
              date: 'Minggu, 17 April 2022',
            ),
            MatchCardHasil(
              status: '11:20',
              logo1: 'assets/rocketsTim.png',
              logo2: 'assets/kingsTim.png',
              namatim1: 'ROCKETS',
              namatim2: 'KINGS',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
            MatchCardHasil(
              status: '14:30',
              logo1: 'assets/miamiTim.png',
              logo2: 'assets/broklynTim.png',
              namatim1: 'MIAMI',
              namatim2: 'BROKLYN',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
            MatchCardHasil(
              status: '18:30',
              logo1: 'assets/utahTim.png',
              logo2: 'assets/bullsTim.png',
              namatim1: 'UTAH',
              namatim2: 'BULLS',
              onClicked: () {},
              skor1: '120',
              skor2: '105',
            ),
          ],
        ),
      ),
    );
  }
}