import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:kartvizit/pages/splash.dart';
import 'package:kartvizit/translate/ceviri.dart';

import 'db/kartmodel/kartmodel.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(KartModelAdapter());
  await Hive.openBox<KartModel>('db');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'UK'), //
      title: 'Material App',
      home: const SplashScreen(),
    );
  }
}
