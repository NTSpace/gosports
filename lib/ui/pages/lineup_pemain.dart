import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class LineUpPemain extends StatelessWidget {
  final String nomorpg, namapemain;
  final VoidCallback onClicked;
  const LineUpPemain({
    Key? key,
    required this.nomorpg,
    required this.namapemain,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: kOrangeColor,
        ),
        width: 97,
        height: 86,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              nomorpg,
              style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 14),
              child: Text(
                namapemain,
                style: whiteTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
