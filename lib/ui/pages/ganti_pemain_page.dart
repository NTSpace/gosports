import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/pemain_keluar.dart';
import 'package:gosports/ui/widgets/pemain_masuk.dart';

class GantiPemain extends StatefulWidget {
  const GantiPemain({Key? key}) : super(key: key);

  @override
  State<GantiPemain> createState() => _GantiPemainState();
}

class _GantiPemainState extends State<GantiPemain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kBlackColor,
            leading: IconButton(
              icon: Image.asset(
                'assets/back_icon.png',
                width: 12,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Ganti Pemain',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 20,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 134, right: 134),
                  child: Text(
                    'Pemain Keluar',
                    style: greyTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                PemainKeluar(),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    'Pemain Masuk',
                    style: greyTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                CardGanti(
                  nama: 'Rahmat Tri',
                ),
                CardGanti(
                  nama: 'Rahmat Tri',
                ),
                CardGanti(
                  nama: 'Rahmat Tri',
                ),
                CardGanti(
                  nama: 'Rahmat Tri',
                ),
                CardGanti(
                  nama: 'Rahmat Tri',
                ),
                CardGanti(
                  nama: 'Rahmat Tri',
                ),
                CardGanti(
                  nama: 'Rahmat Tri',
                ),
                CardGanti(
                  nama: 'Rahmat Tri',
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Simpan',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
