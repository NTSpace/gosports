import 'package:flutter/material.dart';
import 'package:gosports/providers/auth_provider.dart';
import 'package:gosports/ui/pages/splash_page.dart';
import 'package:gosports/utils/user_preferences.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';

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
          create: (context) => AuthProvider(),
        )
      ],
      child: const MaterialApp(
        title: 'Go-Sports',
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
