import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/models/user_profile.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/main_page.dart';
import 'package:gosports/ui/widgets/button_login.dart';
import 'package:gosports/ui/widgets/profile_widget.dart';
import 'package:gosports/utils/user_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class EditFoto extends StatefulWidget {
  const EditFoto({
    Key? key,
  }) : super(key: key);

  @override
  State<EditFoto> createState() => _EditFotoState();
}

class _EditFotoState extends State<EditFoto> {
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
          'EditFoto',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    child: ProfileWidget(
                      imagePath: user.imagePath,
                      isEdit: true,
                      onClicked: () async {
                        final image = await ImagePicker()
                            // ignore: deprecated_member_use
                            .getImage(source: ImageSource.gallery);

                        if (image == null) return;

                        final directory =
                            await getApplicationDocumentsDirectory();
                        final name = path.basename(image.path);
                        final imageFile = File('${directory.path}/$name');
                        final newImage =
                            await File(image.path).copy(imageFile.path);

                        setState(
                            () => user = user.copy(imagePath: newImage.path));
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: kBlackColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_enhance,
                        color: kWhiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
              ),
              child: LoginButton(
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
      ),
    );
  }
}
