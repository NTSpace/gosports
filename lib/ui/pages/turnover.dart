import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/scoring.dart';
import 'package:gosports/ui/widgets/appbarpoint.dart';
import 'package:gosports/ui/widgets/logopoint.dart';
import 'package:gosports/ui/widgets/pemain_kontribusi.dart';
import 'package:gosports/ui/widgets/submit_button.dart';
import 'package:page_transition/page_transition.dart';

class Turnover extends StatefulWidget {
  const Turnover({Key? key}) : super(key: key);

  @override
  State<Turnover> createState() => _TurnoverState();
}

class _TurnoverState extends State<Turnover> {
  List<String> data = [
    'Offensive Foul',
    'Foul Out',
    'Technical Foul',
    'Personal Foul',
    'Blocking Foul',
  ];

  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isSelected6 = false;
  bool _isSelected7 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarPoint(poin: 'Turnover'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const LogoPoint(
                  namatim: 'WARRIORS', logo: 'assets/warriorsTim.png'),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 23),
                child: Theme(
                  data: ThemeData(
                    textTheme: TextTheme(
                      subtitle1: TextStyle(
                        color: kGreyColor,
                      ),
                    ),
                  ),
                  child: DropdownSearch<String>(
                    items: data,
                    selectedItem: 'Jenis Turnover',
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: kWhiteColor,
                        ),
                        child: KontribusiPemain(
                          nomorpg: '00',
                          namapemain: 'Nama Pemain',
                          boxcolor: Colors.yellow.shade600,
                          activecolor: Colors.yellow.shade600,
                          value: _isSelected3,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                _isSelected3 = newValue;
                              },
                            );
                          },
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: kWhiteColor,
                        ),
                        child: KontribusiPemain(
                          nomorpg: '00',
                          namapemain: 'Nama Pemain',
                          boxcolor: Colors.yellow.shade600,
                          activecolor: Colors.yellow.shade600,
                          value: _isSelected4,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                _isSelected4 = newValue;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: kWhiteColor,
                        ),
                        child: KontribusiPemain(
                          nomorpg: '00',
                          namapemain: 'Nama Pemain',
                          boxcolor: Colors.yellow.shade600,
                          activecolor: Colors.yellow.shade600,
                          value: _isSelected5,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                _isSelected5 = newValue;
                              },
                            );
                          },
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: kWhiteColor,
                        ),
                        child: KontribusiPemain(
                          nomorpg: '00',
                          namapemain: 'Nama Pemain',
                          boxcolor: Colors.yellow.shade600,
                          activecolor: Colors.yellow.shade600,
                          value: _isSelected6,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                _isSelected6 = newValue;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: kWhiteColor,
                    ),
                    child: KontribusiPemain(
                      nomorpg: '00',
                      namapemain: 'Nama Pemain',
                      boxcolor: Colors.yellow.shade600,
                      activecolor: Colors.yellow.shade600,
                      value: _isSelected7,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            _isSelected7 = newValue;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              SubmitButton(
                text: 'Submit',
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: const Duration(milliseconds: 500),
                      reverseDuration: const Duration(milliseconds: 500),
                      child: const ScoringPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
