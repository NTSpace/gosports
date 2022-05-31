import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/keluar_button.dart';
import 'package:gosports/ui/widgets/simpan_button.dart';

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
      body: ListView(
        children: [
          Column(
            children: [
              buildTop(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                      left: 50,
                      right: 50,
                    ),
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
                        hintText: "Tachi",
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 50,
                      right: 50,
                    ),
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
                        hintText: "nomuramtr75@gmail.com",
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 50,
                      right: 50,
                    ),
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
                        hintText: "anjaycuy",
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 50,
                      right: 50,
                    ),
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
                        hintText: "081213702872",
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
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SimpanButton(
                      text: 'Ganti Password',
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: KeluarButton(
                      text: 'Keluar',
                      onPressed: () {},
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
    final top = coverHeight - profileHeight - 50;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: <Widget>[
        buildCoverImage(),
        Padding(
          padding: const EdgeInsets.only(
            right: 245,
            top: 25,
          ),
          child: Text(
            'PROFILE',
            textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              fontSize: 24,
              fontWeight: bold,
              color: kWhiteColor,
            ),
          ),
        ),
        Positioned(
          top: 240,
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
          bottom: -25,
          right: 140,
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: kOrangeColor,
              shape: BoxShape.circle,
              border: Border.all(
                width: 4,
                color: kWhiteColor,
              ),
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
