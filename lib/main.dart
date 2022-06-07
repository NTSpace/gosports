import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/home_page.dart';
import 'package:gosports/ui/pages/login_page.dart';
import 'package:gosports/ui/pages/main_page.dart';
import 'package:gosports/ui/pages/pertandingan_jadwal.dart';
import 'package:gosports/utils/user_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Go-Sports',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
