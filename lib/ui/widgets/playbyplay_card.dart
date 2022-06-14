import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class PlaybyplayCard extends StatelessWidget {
  final String waktu, logo, nomorpg, namapemain, play, skor;

  const PlaybyplayCard({
    Key? key,
    required this.nomorpg,
    required this.logo,
    required this.namapemain,
    required this.waktu,
    required this.play,
    required this.skor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                waktu,
                style:
                    blackTextStyle.copyWith(fontWeight: regular, fontSize: 10),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 210,
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                        height: 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(logo),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: Text(
                          '$nomorpg, $namapemain, $play',
                          style: blackTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Text(
                    skor,
                    style: blackTextStyle.copyWith(
                        fontWeight: regular, fontSize: 10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
