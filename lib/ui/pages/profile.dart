import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gosports/models/user_login.dart';
import 'package:gosports/models/user_profile.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/edit_email.dart';
import 'package:gosports/ui/pages/edit_foto.dart';
import 'package:gosports/ui/pages/edit_nama.dart';
import 'package:gosports/ui/pages/edit_nomor.dart';
import 'package:gosports/ui/pages/login_page.dart';
import 'package:gosports/ui/pages/reset_password_page.dart';
import 'package:gosports/ui/widgets/keluar_button.dart';
import 'package:gosports/ui/widgets/profile_widget.dart';
import 'package:gosports/ui/widgets/simpan_button.dart';
import 'package:gosports/utils/user_preferences.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late SharedPreferences sharedPreferences;
  late bool passwordVisibility;
  final double coverHeight = 280;
  final double profileHeight = 55;
  late User user;
  UsersLogin? _user;

  Future<void> getUser() async {
    String id;
    sharedPreferences = await SharedPreferences.getInstance();
    id = sharedPreferences.getInt("id").toString();
    final response = await http
        .get(Uri.parse('https://auth-service.gosports.id/users/$id'), headers: {
      'Content-Type': 'application/json',
    });
    setState(() {
      _user = UsersLogin.fromJson(jsonDecode(response.body));
    });
  }

  @override
  void initState() {
    super.initState();
    getUser();
    passwordVisibility = false;
    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return Scaffold(
      backgroundColor: kWhiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff292C31),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/back_icon.png',
            width: 15,
          ),
        ),
        title: Text(
          'PROFILE',
          style: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [buildTop(), buildProfile(user)],
          ),
        ],
      ),
    );
  }

  Widget buildProfile(User user) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 500),
                    reverseDuration: const Duration(milliseconds: 500),
                    child: const EditNama(),
                  ),
                );
              },
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 3),
                  labelText: "Nama",
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: regular,
                    color: kBlackColor,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: user.nama,
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: semibold,
                    color: kBlackColor,
                  ),
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.only(left: 25),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                    color: kBlackColor,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 50,
              right: 50,
            ),
            child: InkWell(
              onTap: () {},
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 3),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: regular,
                    color: kBlackColor,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: _user?.email,
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: semibold,
                    color: kBlackColor,
                  ),
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.only(left: 25),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                    color: kBlackColor,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 50,
              right: 50,
            ),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 500),
                    reverseDuration: const Duration(milliseconds: 500),
                    child: const ResetPage(),
                  ),
                );
              },
              child: TextField(
                enabled: false,
                obscureText: !passwordVisibility,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 3),
                  labelText: "Kata Sandi",
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: regular,
                    color: kBlackColor,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "********",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: semibold,
                    color: kBlackColor,
                  ),
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.only(left: 25),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                    color: kBlackColor,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 50,
              right: 50,
            ),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 500),
                    reverseDuration: const Duration(milliseconds: 500),
                    child: const EditNomor(),
                  ),
                );
              },
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 3),
                  labelText: "Nomor Handphone",
                  labelStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: regular,
                    color: kBlackColor,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: user.nomor,
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: semibold,
                    color: kBlackColor,
                  ),
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.only(left: 25),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SimpanButton(
              text: 'Ganti Password',
              onPressed: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 500),
                    reverseDuration: const Duration(milliseconds: 500),
                    child: const ResetPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: KeluarButton(
              text: 'Keluar',
              onPressed: () async {
                sharedPreferences
                  ..clear()
                  ..commit();

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
          ),
        ],
      );

  Widget buildTop() {
    final top = coverHeight - profileHeight - 90;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: <Widget>[
        buildCoverImage(),
        Positioned(
          top: 200,
          child: Container(
            padding: const EdgeInsets.only(bottom: 5),
            height: 610,
            width: 420,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
          ),
        ),
        Positioned(
          top: top,
          child: ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const EditFoto()),
              );
              setState(() {});
            },
          ),
        ),
        buildEditIcon(),
      ],
    );
  }

  Widget buildEditIcon() => Positioned(
        bottom: 20,
        right: 140,
        child: Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: kBlackColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.camera_alt,
            color: kWhiteColor,
          ),
        ),
      );

  Widget buildCoverImage() => Container(
        color: kWhiteColor,
        child: Image.asset(
          'assets/bgprofile.png',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
}
