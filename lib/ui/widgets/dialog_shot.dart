import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/skorpoin.dart';
import 'package:page_transition/page_transition.dart';

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
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: const Duration(milliseconds: 0),
                              reverseDuration: const Duration(milliseconds: 0),
                              child: const SkorPoin(),
                            ),
                          );
                        },
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
