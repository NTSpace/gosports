import 'package:flutter/material.dart';
import 'package:gosports/providers/pertandingan_provider.dart';
import 'package:gosports/providers/tim_provider.dart';
import 'package:gosports/ui/pages/hasil.dart';
import 'package:gosports/ui/pages/jadwal_hasil.dart';
import 'package:gosports/ui/pages/splash_page.dart';
import 'package:gosports/utils/user_preferences.dart';
import 'package:provider/provider.dart';
// ignore: import_of_legacy_library_into_null_safe

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PertandinganProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TimProvider(),
        )
      ],
      child: const MaterialApp(
        title: 'Go-Sports',
        debugShowCheckedModeBanner: false,
        home: JadwalHasil(),
      ),
    );
  }
}
