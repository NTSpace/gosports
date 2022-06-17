import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class ScoreboardHasilJadwal extends StatelessWidget {
  final String namatima, namatimb, logotima, logotimb;
  final int skorpoin1, skorpoin2;
  const ScoreboardHasilJadwal(
      {Key? key,
      required this.namatima,
      required this.namatimb,
      required this.logotima,
      required this.logotimb,
      required this.skorpoin1,
      required this.skorpoin2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 230,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/scoreboard.png'), fit: BoxFit.fill),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 43),
            child: Text(
              'SEMI FINAL DBL',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            child: Text(
              'SENIN, 10 MEI 2022',
              style: whiteTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(logotima), fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      child: Text(
                        namatima,
                        style: whiteTextStyle.copyWith(
                          fontWeight: semibold,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: Text(
                    '$skorpoin1',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: Text(
                    '-',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: Text(
                    '$skorpoin2',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 22),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(logotimb), fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 3, left: 22),
                      child: Text(
                        namatimb,
                        style: whiteTextStyle.copyWith(
                          fontWeight: semibold,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
