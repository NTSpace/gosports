import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class DateCard extends StatelessWidget {
  final String date;

  const DateCard({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: const BoxDecoration(
          color: Color(0xffF1F1F1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            topLeft: Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 4,
              height: 45,
              decoration: const BoxDecoration(
                  color: Color(0xffFF7E1F),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(6))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                date,
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: semibold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
