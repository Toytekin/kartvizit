import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartvizit/base/resimyolu%C4%B1.dart';
import 'package:kartvizit/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Get.off(HomeScreeen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(ResimYolu.instance.item_06),
    );
  }
}
