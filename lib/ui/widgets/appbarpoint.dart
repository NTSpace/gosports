import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class AppBarPoint extends StatelessWidget {
  final String poin;
  const AppBarPoint({Key? key, required this.poin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBlackColor,
      title: Center(
        child: Container(
          margin: EdgeInsets.only(left: 40),
          child: Text(
            poin,
            style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close_rounded))
      ],
    );
  }
}
