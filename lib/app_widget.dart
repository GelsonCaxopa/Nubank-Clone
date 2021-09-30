import 'package:flutter/material.dart';

import 'Modules/Home/home_page.dart';
import 'Modules/Splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/splash",
      routes: {
        "/home": (context) => HomePage(),
        "/splash": (context) => SplashPage()
      },
    );
  }
}
