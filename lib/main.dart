import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:latihan1/models/models.dart';

import 'package:latihan1/widgets/lamaran_sukses.dart';
import 'package:splashscreen/splashscreen.dart';
import 'pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),

      theme: ThemeData(
          textTheme: TextTheme(
              title: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14))),
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Column(
      children: [
        Expanded(
          flex: orientation == Orientation.portrait ? 3 : 3,
          child: SizedBox(
            // height: MediaQuery.of(context).size.height * 0.2,
            child: Container(
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          flex: orientation == Orientation.portrait ? 7 : 6,
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.7,
            child: SplashScreen(
              seconds: 6,
              navigateAfterSeconds: new MainPage(),
              image: new Image.asset("assets/jogjakarir.png"),
              photoSize: orientation == Orientation.portrait ? 100.0 : 65,
              useLoader: false,
              loaderColor: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
