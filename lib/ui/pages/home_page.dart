import 'package:gosports/models/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/widgets/cardmatch.dart';
import 'package:gosports/ui/widgets/datematch.dart';
import 'package:gosports/utils/user_preferences.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kGreyColor,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(67),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kDarkColor,
            flexibleSpace: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 18),
                    width: 43.28,
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/basket_logo.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 14,
                    ),
                    color: Colors.transparent,
                    alignment: Alignment.centerRight,
                    width: 140,
                    height: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Selamat Datang!',
                          textAlign: TextAlign.end,
                          style: whiteTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                            color: kWhiteColor,
                          ),
                        ),
                        Text(
                          user.nama,
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semibold,
                            color: kOrangeColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: const DecorationImage(
                      image: AssetImage('assets/carousel1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: const DecorationImage(
                      image: AssetImage('assets/carousel2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    image: const DecorationImage(
                      image: AssetImage('assets/carousel3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 330.0,
                enlargeCenterPage: false,
                autoPlay: true,
                aspectRatio: 4 / 3,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 1,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              color: kWhiteColor,
              height: 250,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'JADWAL PERTANDINGAN',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        InkWell(
                          onTap: () {
                            print('Button-Login pressed ...');
                          },
                          child: Text(
                            'Lihat Semua >',
                            style: orangeTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: regular,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const DateCard(
                    date: 'Minggu, 17 April 2022',
                  ),
                  MatchCard(
                      status: '11:20',
                      logo1: 'assets/rocketsTim.png',
                      logo2: 'assets/kingsTim.png',
                      namatim1: 'ROCKETS',
                      namatim2: 'KINGS',
                      onClicked: () {}),
                  MatchCard(
                      status: '14:30',
                      logo1: 'assets/miamiTim.png',
                      logo2: 'assets/broklynTim.png',
                      namatim1: 'MIAMI',
                      namatim2: 'BROKLYN',
                      onClicked: () {}),
                  MatchCard(
                      status: '18:30',
                      logo1: 'assets/utahTim.png',
                      logo2: 'assets/bullsTim.png',
                      namatim1: 'UTAH',
                      namatim2: 'BULLS',
                      onClicked: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
