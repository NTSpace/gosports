import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/models/user_profile.dart';
import 'package:gosports/ui/pages/main_page.dart';
import 'package:gosports/ui/widgets/textfield_widget.dart';
import 'package:gosports/utils/user_preferences.dart';

import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/submit_button.dart';
import 'package:page_transition/page_transition.dart';

class EditNomor extends StatefulWidget {
  const EditNomor({
    Key? key,
  }) : super(key: key);

  @override
  State<EditNomor> createState() => _EditNomorState();
}

class _EditNomorState extends State<EditNomor> {
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
              Navigator.pop(context);
            },
            icon: Image.asset(
              'assets/back_icon.png',
              width: 15,
            )),
        title: Text(
          'NOMOR HANDPHONE',
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
                      label: 'Nomor',
                      text: user.nomor,
                      onChanged: (nomor) => user = user.copy(nomor: nomor),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 550),
                  child: SubmitButton(
                    text: 'Submit',
                    onPressed: () async {
                      UserPreferences.setUser(user);
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 500),
                          reverseDuration: const Duration(milliseconds: 500),
                          child: const MainPage(),
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
