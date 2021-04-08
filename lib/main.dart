import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/models/models.dart';
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
      home: PerusahaanDetailPage(
        userSave: UserSave(perusahaan: mockPerusahaan[3]),
      ),
    );
  }
}
