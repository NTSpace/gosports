import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';

class PertandinganJadwal extends StatefulWidget {
  const PertandinganJadwal({Key? key}) : super(key: key);

  @override
  State<PertandinganJadwal> createState() => _PertandinganJadwalState();
}

class _PertandinganJadwalState extends State<PertandinganJadwal> {
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
        body: Container(),
      ),
    );
  }
}
