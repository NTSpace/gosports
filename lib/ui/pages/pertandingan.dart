import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/dialog_pertandingan.dart';

class Pertandingan extends StatefulWidget {
  const Pertandingan({Key? key}) : super(key: key);

  @override
  State<Pertandingan> createState() => _PertandinganState();
}

class _PertandinganState extends State<Pertandingan> {
  late TextEditingController searchController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: AppBar(
          backgroundColor: const Color(0xFF292C31),
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            width: 5,
            height: 140,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.7, -0.2),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 55, 0, 0),
                    child: Text(
                      'PERTANDINGAN',
                      style: GoogleFonts.montserrat(
                        fontSize: 22,
                        fontWeight: bold,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 322,
                        height: 38,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E2024),
                          boxShadow: [
                            BoxShadow(
                              color: kGreyColor,
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 2, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              4, 0, 4, 0),
                                      child: TextFormField(
                                        controller: searchController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText:
                                              'Masukkan pencarian anda disini',
                                          labelStyle: GoogleFonts.montserrat(
                                            fontSize: 12,
                                            color: kGreyColor,
                                            fontWeight: regular,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          suffixIcon: Icon(
                                            Icons.search,
                                            color: kGreyColor,
                                            size: 22,
                                          ),
                                        ),
                                        style: GoogleFonts.lexendDeca(
                                          color: kWhiteColor,
                                          fontSize: 13,
                                          fontWeight: regular,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: const [],
          elevation: 2,
        ),
      ),
      backgroundColor: kGreyColor,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const KodeDialog(
                description:
                    'Masukan kode yang telah dibuat oleh panitia turnamen untuk memasuki turnamen tersebut',
                title: "Kode Pertandingan"),
          );
        },
        backgroundColor: kOrangeColor,
        icon: const Icon(
          Icons.add_circle,
        ),
        elevation: 8,
        label: Text(
          'Tambah Turnamen',
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: regular,
            color: kWhiteColor,
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: 400,
            height: 670,
            decoration: const BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 120),
                  child: Image.asset(
                    'assets/bg_pertandingan.png',
                    width: 254,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
