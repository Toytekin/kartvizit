import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kartvizit/base/textformfield.dart';
import 'package:kartvizit/db/kartmodel/kartmodel.dart';

import '../../../theme/theme.dart';

class ProfilOlustur extends StatefulWidget {
  const ProfilOlustur({super.key});

  @override
  State<ProfilOlustur> createState() => _ProfilOlusturState();
}

class _ProfilOlusturState extends State<ProfilOlustur> {
  TextEditingController adController = TextEditingController();
  TextEditingController sirketController = TextEditingController();
  TextEditingController unvanController = TextEditingController();
  TextEditingController adresController = TextEditingController();
  TextEditingController telController = TextEditingController();
  TextEditingController wepController = TextEditingController();

  ImagePicker imagePicker = ImagePicker();
  ImageCropper imageCropper = ImageCropper();
  File? dosya;
  String? dosyaYolu;

  //var box = Hive.box<KartModel>('db');

  @override
  void initState() {
    super.initState();
    // verileriDenetle();
  }

/*
  verileriDenetle() {
    box.keys.forEach((element) {
      if (element == 1) {
        box.values.forEach((element) {
          adController.text = element.ad;
          sirketController.text = element.ad;
          unvanController.text = element.unvan;
          adresController.text = element.adres;
          telController.text = element.tel;
          wepController.text = element.wep;
        });
      } else {
        null;
      }
    });
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        elevation: 0,
        backgroundColor: Temalar.temaRenk,
        title: Text(
          'Card App',
          style: GoogleFonts.satisfy(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          const Divider(),
          GestureDetector(
            onTap: () {
              resmiCek(ImageSource.gallery);
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: dosyaYolu != null
                  ? Image.file(
                      File(dosyaYolu!),
                      fit: BoxFit.contain,
                    )
                  : const Icon(Icons.home),
            ),
          ),
          const Divider(),
          sbtTextformfield.textformfield(adController, 'adsyd'.tr),
          const Divider(),
          sbtTextformfield.textformfield(sirketController, 'sirket'.tr),
          const Divider(),
          sbtTextformfield.textformfield(unvanController, 'unvan'.tr),
          const Divider(),
          sbtTextformfield.textformfield(adresController, 'Adres'),
          const Divider(),
          sbtTextformfield.textformfield(telController, 'tel'.tr),
          const Divider(),
          sbtTextformfield.textformfield(wepController, 'Wep'.tr),
          TextButton(
              onPressed: () {
                //  kaydet();
              },
              child: Text(
                'Kaydet'.tr,
                style: TextStyle(color: Temalar.temaRenk, fontSize: 20),
              )),
          const Divider(),
        ],
      ),
    );
  }

  Future<void> resmiCek(ImageSource source) async {
    var foto = await imagePicker.pickImage(source: source);
    setState(() {
      if (foto?.path != null) {
        dosya = File(foto!.path);
        dosyaYolu = dosya?.path;
      } else {
        Get.off(ProfilOlustur());
      }
    });
  }
/*
  Future<void> kaydet() async {
    var veri = KartModel(
      ad: adController.text,
      sirket: sirketController.text,
      unvan: unvanController.text,
      adres: adresController.text,
      tel: telController.text,
      wep: wepController.text,
    );
    await box.put(1, veri);
    Get.back();
  }
*/

}
