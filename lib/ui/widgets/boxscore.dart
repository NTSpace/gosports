import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class BoxScore extends StatelessWidget {
  final String namapemain;
  final int nomorpg, mins, ast, point1, reb;

  const BoxScore(
      {Key? key,
      required this.nomorpg,
      required this.mins,
      required this.namapemain,
      required this.reb,
      required this.ast,
      required this.point1})
      : super(key: key);

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
            Text(
              ('$nomorpg'),
              style:
                  blackTextStyle.copyWith(fontWeight: semibold, fontSize: 10),
            ),
            SizedBox(
              width: 130,
              child: Text(
                namapemain,
                style:
                    blackTextStyle.copyWith(fontWeight: semibold, fontSize: 10),
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              "$mins'",
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 10,
              ),
            ),
            Text(
              '$reb',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 10,
              ),
            ),
            Text(
              '$ast',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 10,
              ),
            ),
            Text(
              '$point1',
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
