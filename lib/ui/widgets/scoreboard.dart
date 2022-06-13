import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/jadwal_hasil.dart';
import 'package:page_transition/page_transition.dart';

class ScoreBoard extends StatefulWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 314,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/scoreboard.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Image.asset(
                    'assets/back_icon.png',
                    width: 12,
                    height: 12,
                  ),
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const JadwalHasil(),
                      ),
                    );
                  },
                ),
                Text(
                  'GSW VS MEM',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 20,
                    decoration: TextDecoration.none,
                  ),
                ),
                Image.asset(
                  'assets/orange_light.png',
                  width: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/warriorsTim.png',
                  width: 75,
                ),
                Column(
                  children: [
                    Text(
                      '60:00',
                      style: whiteTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 32,
                          decoration: TextDecoration.none),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      child: Text(
                        '00:00',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Reset',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Image.asset(
                  'assets/grizzliesTim.png',
                  width: 75,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 8),
                    margin: const EdgeInsets.only(top: 45),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: kWhiteColor,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Point',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: Text(
                            '000',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 32,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 45),
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        Text(
                          'Foul',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '00',
                          style: redTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 32,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 8),
                    margin: const EdgeInsets.only(top: 45),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: kWhiteColor,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Point',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: Text(
                            '000',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 32,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 45),
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        Text(
                          'Foul',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '00',
                          style: redTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 32,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'WARRIORS',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'WARRIORS',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
