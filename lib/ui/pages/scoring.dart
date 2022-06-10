// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/cardnamatim.dart';
import 'package:gosports/ui/widgets/dialog_shot.dart';
import 'package:gosports/ui/widgets/scoreboard.dart';

class ScoringPage extends StatefulWidget {
  const ScoringPage({Key? key}) : super(key: key);

  @override
  State<ScoringPage> createState() => _ScoringPageState();
}

class _ScoringPageState extends State<ScoringPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(vsync: this, length: 3);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kGreyColor,
          body: Column(
            children: [
              const ScoreBoard(),
              Container(
                color: kWhiteColor,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: kOrangeColor,
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'Scoring'),
                    Tab(text: 'Pergantian'),
                    Tab(text: 'Play-By-Play')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: MediaQuery.of(context).size.height * 0.40,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: <Widget>[
                        Namatimsc(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 155,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1E2024),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextButton(
                                child: Text(
                                  'SHOT',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 24,
                                  ),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => DialogShot(),
                                  );
                                },
                              ),
                            ),
                            Container(
                              width: 155,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1E2024),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextButton(
                                child: Text(
                                  'SHOT',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 24,
                                  ),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => DialogShot(),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kRedColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  child: Text(
                                    'F',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kRedColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  child: Text(
                                    'F',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  child: Text(
                                    'T',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextButton(
                                  child: Text(
                                    'T',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text('Hello2'),
                    Text('Hello3'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
