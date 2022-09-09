import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartvizit/base/textformfield.dart';
import 'package:kartvizit/theme/theme.dart';

class ManuelEkleme extends StatefulWidget {
  const ManuelEkleme({super.key});

  @override
  State<ManuelEkleme> createState() => _ManuelEklemeState();
}

class _ManuelEklemeState extends State<ManuelEkleme> {
  TextEditingController adController = TextEditingController();
  TextEditingController sirketController = TextEditingController();
  TextEditingController unvanController = TextEditingController();
  TextEditingController adressController = TextEditingController();
  TextEditingController telController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController wepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Temalar.temaRenk,
          title: Text(
            'Card App',
            style:
                GoogleFonts.satisfy(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            const Divider(),
            sbtTextformfield.textformfield(adController, 'adsyd'.tr),
            const Divider(),
            sbtTextformfield.textformfield(sirketController, 'sirket'.tr),
            const Divider(),
            sbtTextformfield.textformfield(unvanController, 'unvan'.tr),
            const Divider(),
            sbtTextformfield.textformfield(adressController, 'Adres'),
            const Divider(),
            sbtTextformfield.textformfield(telController, 'tel'.tr),
            const Divider(),
            sbtTextformfield.textformfield(mailController, 'Mail'),
            const Divider(),
            sbtTextformfield.textformfield(wepController, 'Wep '),
            const Divider(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Kaydet'.tr,
                  style: TextStyle(color: Temalar.temaRenk, fontSize: 20),
                )),
            const Divider(),
          ],
        ));
  }
}
