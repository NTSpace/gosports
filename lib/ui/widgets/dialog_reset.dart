import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/main_page.dart';

class ResetDialog extends StatelessWidget {
  final String title, description;

  const ResetDialog({Key? key, required this.description, required this.title})
      : super(key: key);

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
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            width: 224,
            height: 243,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: kWhiteColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 1.0)),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 23),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MainPage()));
                    },
                    child: Text(
                      'OK',
                      style: blackTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 14,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
