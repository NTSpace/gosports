import 'package:flutter/material.dart';

import 'package:gosports/shared/theme.dart';

class TeamVs extends StatelessWidget {
  final String logo1, logo2;
  final double opacity, opacity2;
  final VoidCallback onClicked1, onClicked2;

  const TeamVs({
    Key? key,
    required this.logo2,
    required this.opacity,
    required this.logo1,
    required this.opacity2,
    required this.onClicked1,
    required this.onClicked2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 19),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: onClicked1,
            child: Container(
              width: 75,
              height: 75,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(logo1),
                    fit: BoxFit.cover,
                    opacity: opacity),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 71.0),
            child: Text(
              'VS',
              style: blackTextStyle.copyWith(
                fontSize: 28,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: onClicked2,
            child: Container(
              width: 75,
              height: 75,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(logo2),
                    fit: BoxFit.cover,
                    opacity: opacity2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
