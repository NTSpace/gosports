import 'package:flutter/material.dart';
import 'package:gosports/ui/pages/splash_page.dart';
import 'package:gosports/ui/pages/tiga_poin.dart';
import 'package:gosports/ui/widgets/skorpoin.dart';
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
      home: SplashPage(),
    );
  }
}
