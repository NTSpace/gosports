import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/login_page.dart';
import 'package:gosports/ui/widgets/tologin_button.dart';
import 'package:page_transition/page_transition.dart';

class CustomDialog extends StatelessWidget {
  final String title, description;

  const CustomDialog({Key? key, required this.description, required this.title})
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
        Container(
          padding: const EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          margin: const EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
            color: kWhiteColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
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
              Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                description,
                style: const TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ToLoginButton(
                  text: 'MASUK SEKARANG',
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const LoginPage(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 40,
          right: 16,
          left: 16,
          child: Column(
            children: [
              Container(
                width: 65,
                height: 58,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/checklist.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
