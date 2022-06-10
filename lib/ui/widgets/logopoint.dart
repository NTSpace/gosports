import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class LogoPoint extends StatelessWidget {
  final String namatim, logo;
  const LogoPoint({Key? key, required this.namatim, required this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 43),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            namatim,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 14),
          ),
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(logo),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
