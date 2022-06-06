import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/edit_email.dart';
import 'package:gosports/ui/pages/edit_nama.dart';
import 'package:gosports/ui/pages/edit_nomor.dart';
import 'package:gosports/ui/pages/login_page.dart';
import 'package:gosports/ui/pages/reset_password_page.dart';
import 'package:gosports/ui/widgets/keluar_button.dart';
import 'package:gosports/ui/widgets/simpan_button.dart';
import 'package:page_transition/page_transition.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late bool passwordVisibility;
  final double coverHeight = 280;
  final double profileHeight = 55;

  @override
  void initState() {
    super.initState();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
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
            children: [
              buildTop(),
              Column(
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
                          labelStyle: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Tachi",
                          hintStyle: blackTextStyle.copyWith(
                            fontWeight: semibold,
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
                            child: const EditEmail(),
                          ),
                        );
                      },
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(bottom: 3),
                          labelText: "Email",
                          labelStyle: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "nomuramtr75@gmail.com",
                          hintStyle: blackTextStyle.copyWith(
                            fontWeight: semibold,
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
                          labelStyle: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "anjaycuy",
                          hintStyle: blackTextStyle.copyWith(
                            fontWeight: semibold,
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
                          labelStyle: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "081213702872",
                          hintStyle: blackTextStyle.copyWith(
                            fontWeight: semibold,
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
              ),
            ],
          ),
        ],
      ),
    );
  }

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
          child: buildProfileImage(),
        ),
        Positioned(
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
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: kWhiteColor,
        child: Image.asset(
          'assets/bgprofile.png',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => Container(
        width: 130,
        height: 130,
        decoration: BoxDecoration(
          border: Border.all(
            width: 7,
            color: kWhiteColor,
          ),
          shape: BoxShape.circle,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/profileimg.png'),
          ),
        ),
      );
}
