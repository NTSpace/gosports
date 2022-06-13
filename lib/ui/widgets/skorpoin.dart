import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/dua_poinrebound.dart';
import 'package:gosports/ui/pages/satu_poinrebound.dart';
import 'package:gosports/ui/widgets/appbarpoint.dart';
import 'package:gosports/ui/widgets/logopoint.dart';
import 'package:gosports/ui/pages/tiga_poin.dart';
import 'package:page_transition/page_transition.dart';

class SkorPoin extends StatefulWidget {
  const SkorPoin({Key? key}) : super(key: key);

  @override
  State<SkorPoin> createState() => _SkorPoinState();
}

class _SkorPoinState extends State<SkorPoin> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const LogoPoint(
                  namatim: 'WARRIORS', logo: 'assets/warriorsTim.png'),
              const SizedBox(
                height: 36,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: const Duration(milliseconds: 500),
                      reverseDuration: const Duration(milliseconds: 500),
                      child: const TigaPoin(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 27),
                  height: 98,
                  width: double.infinity,
                  color: const Color(0xff1E2024),
                  alignment: Alignment.center,
                  child: Text(
                    '+3',
                    style:
                        whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: const Duration(milliseconds: 500),
                      reverseDuration: const Duration(milliseconds: 500),
                      child: const DuaPoin(),
                    ),
                  );
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 27),
                  height: 98,
                  width: double.infinity,
                  color: const Color(0xff1E2024),
                  alignment: Alignment.center,
                  child: Text(
                    '+2',
                    style:
                        whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: const Duration(milliseconds: 500),
                      reverseDuration: const Duration(milliseconds: 500),
                      child: const SatuPoin(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 27),
                  height: 98,
                  width: double.infinity,
                  color: const Color(0xff1E2024),
                  alignment: Alignment.center,
                  child: Text(
                    '+1',
                    style:
                        whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 67,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
