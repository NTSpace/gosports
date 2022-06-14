import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class GoogleLogin extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const GoogleLogin({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xffEDEFF4);
    const secondaryColor = Color(0xffEDEFF4);

    const double borderRadius = 4;

    return Container(
      alignment: AlignmentDirectional.center,
      width: 326,
      height: 48,
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: kGreyColor),
            borderRadius: BorderRadius.circular(borderRadius),
            gradient:
                const LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            alignment: Alignment.center,
            padding: MaterialStateProperty.all(
                const EdgeInsets.only(top: 15, bottom: 15)),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: const AlignmentDirectional(0, 0),
                width: 40,
                height: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/google_logo.png'),
                  ),
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: mainTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
