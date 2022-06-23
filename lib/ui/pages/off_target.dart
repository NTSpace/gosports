import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/scoring.dart';
import 'package:gosports/ui/widgets/appbarpoint.dart';
import 'package:gosports/ui/widgets/logopoint.dart';
import 'package:gosports/ui/widgets/pemain_kontribusi.dart';
import 'package:gosports/ui/widgets/submit_button.dart';
import 'package:page_transition/page_transition.dart';

class OffTarget extends StatefulWidget {
  const OffTarget({Key? key}) : super(key: key);

  @override
  State<OffTarget> createState() => _OffTargetState();
}

class _OffTargetState extends State<OffTarget> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarPoint(poin: 'Off Target'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const LogoPoint(
                  namatim: 'WARRIORS', logo: 'assets/warriorsTim.png'),
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
                          boxcolor: kBlackColor,
                          activecolor: kBlackColor,
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
                          boxcolor: kBlackColor,
                          activecolor: kBlackColor,
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
                          boxcolor: kBlackColor,
                          activecolor: kBlackColor,
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
                          boxcolor: kBlackColor,
                          activecolor: kBlackColor,
                          value: _isSelected1,
                          onChanged: (bool newValue) {
                            setState(
                              () {
                                _isSelected1 = newValue;
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
                      boxcolor: kBlackColor,
                      activecolor: kBlackColor,
                      value: _isSelected2,
                      onChanged: (bool newValue) {
                        setState(
                          () {
                            _isSelected2 = newValue;
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
