import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/scoring.dart';
import 'package:gosports/ui/widgets/appbarpoint.dart';
import 'package:gosports/ui/widgets/checkbox.dart';
import 'package:gosports/ui/widgets/logopoint.dart';
import 'package:gosports/ui/widgets/pemain_kontribusi.dart';
import 'package:gosports/ui/widgets/submit_button.dart';
import 'package:page_transition/page_transition.dart';

class TigaPoin extends StatefulWidget {
  const TigaPoin({Key? key}) : super(key: key);

  @override
  State<TigaPoin> createState() => _TigaPoinState();
}

class _TigaPoinState extends State<TigaPoin> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
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
          child: AppBarPoint(poin: '3 POIN'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const LogoPoint(
                  namatim: 'WARRIORS', logo: 'assets/warriorsTim.png'),
              InkWell(
                child: Container(
                  height: 28,
                  width: 83,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    border: Border.all(
                      color: kOrangeColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Assist',
                    style: orangeTextStyle.copyWith(
                        fontSize: 14, fontWeight: semibold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: kWhiteColor,
                    ),
                    child: LabeledCheckbox2(
                        label: 'Tidak',
                        padding: const EdgeInsets.only(right: 0),
                        value: _isSelected1,
                        onChanged: (bool newValue) {
                          setState(
                            () {
                              _isSelected1 = newValue;
                            },
                          );
                        },
                        activecolor: kRedColor,
                        boxcolor: kRedColor),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: kWhiteColor,
                    ),
                    child: LabeledCheckbox2(
                        label: 'Iya',
                        padding: const EdgeInsets.only(right: 0),
                        value: _isSelected2,
                        onChanged: (bool newValue) {
                          setState(
                            () {
                              _isSelected2 = newValue;
                            },
                          );
                        },
                        activecolor: kOrangeColor,
                        boxcolor: kOrangeColor),
                  ),
                ],
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
                      boxcolor: kBlackColor,
                      activecolor: kBlackColor,
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
