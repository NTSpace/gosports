import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/models/user_profile.dart';
import 'package:gosports/ui/widgets/textfield_widget.dart';
import 'package:gosports/utils/user_preferences.dart';
import 'package:page_transition/page_transition.dart';

import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/profile.dart';
import 'package:gosports/ui/widgets/submit_button.dart';

class EditEmail extends StatefulWidget {
  const EditEmail({
    Key? key,
  }) : super(key: key);

  @override
  State<EditEmail> createState() => _EditEmailState();
}

class _EditEmailState extends State<EditEmail> {
  late User user;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kWhiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff292C31),
        elevation: 10,
        leading: IconButton(
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(milliseconds: 500),
                  reverseDuration: const Duration(milliseconds: 500),
                  child: const Profile(),
                ),
              );
            },
            icon: Image.asset(
              'assets/back_icon.png',
              width: 15,
            )),
        title: Text(
          'EMAIL',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    right: 24,
                    left: 24,
                    top: 29,
                  ),
                  child: TextFieldWidget(
                    label: 'Nama',
                    text: user.email,
                    onChanged: (email) => user = user.copy(email: email),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 550),
                  child: SubmitButton(
                    text: 'Submit',
                    onPressed: () {
                      UserPreferences.setUser(user);
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          duration: const Duration(milliseconds: 500),
                          reverseDuration: const Duration(milliseconds: 500),
                          child: const Profile(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
