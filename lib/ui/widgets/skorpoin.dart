import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/appbarpoint.dart';
import 'package:gosports/ui/widgets/logopoint.dart';

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
