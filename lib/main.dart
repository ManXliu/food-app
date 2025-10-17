import 'package:alarm/alarm.dart';
import 'package:flutter/material.dart';

import 'base/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Alarm.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 30,
          backgroundColor: Color(0xFFD9D9D9),
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            shadows: [BoxShadow(color: Color(0xFF00B4BF))],
          ),
        ),
      ),
    );
  }
}
