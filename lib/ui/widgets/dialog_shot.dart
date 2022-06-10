import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class DialogShot extends StatefulWidget {
  const DialogShot({Key? key}) : super(key: key);

  @override
  State<DialogShot> createState() => _DialogShotState();
}

class _DialogShotState extends State<DialogShot> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            height: 140,
            width: 242,
            decoration: BoxDecoration(
                color: kWhiteColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: Text(
                    'Apakah masuk?',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 6),
                          decoration: BoxDecoration(
                            color: kRedColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'TIDAK',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 6),
                          decoration: BoxDecoration(
                            color: kOrangeColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'MASUK',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
