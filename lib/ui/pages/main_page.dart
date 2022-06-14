import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';
import 'package:gosports/ui/pages/home_page.dart';
import 'package:gosports/ui/pages/pertandingan.dart';
import 'package:gosports/ui/pages/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    Widget customBottomNav() {
      return BottomAppBar(
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home_icon.png',
                width: 24,
                color: currentIndex == 0
                    ? kOrangeColor
                    : const Color.fromRGBO(0, 0, 0, 0.38),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/pertandingan_icon.png',
                width: 24,
                color: currentIndex == 1
                    ? kOrangeColor
                    : const Color.fromRGBO(0, 0, 0, 0.38),
              ),
              label: 'Pertandingan',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 24,
                color: currentIndex == 2
                    ? kOrangeColor
                    : const Color.fromRGBO(0, 0, 0, 0.38),
              ),
              label: 'Profile',
            )
          ],
          currentIndex: currentIndex,
          selectedItemColor: kOrangeColor,
          onTap: _onItemTapped,
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          {
            return const HomePage();
          }
        case 1:
          {
            return const Pertandingan();
          }
        case 2:
          {
            return const Profile();
          }
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
