import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class PemainCard extends StatelessWidget {
  final String nomorpg, fotopemain, namapemain, posisi;

  const PemainCard({
    Key? key,
    required this.nomorpg,
    required this.fotopemain,
    required this.namapemain,
    required this.posisi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 42),
              child: Text(
                nomorpg,
                style:
                    blackTextStyle.copyWith(fontWeight: regular, fontSize: 10),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  width: 33,
                  height: 29,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(fotopemain),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  margin: const EdgeInsets.only(left: 8, right: 34),
                  child: Flexible(
                    child: Text(
                      namapemain,
                      style: blackTextStyle.copyWith(
                          fontWeight: regular, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 27),
              child: Text(
                posisi,
                style:
                    blackTextStyle.copyWith(fontWeight: regular, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
