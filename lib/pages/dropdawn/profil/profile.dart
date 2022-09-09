import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:kartvizit/db/kartmodel/kartmodel.dart';

import '../../../theme/theme.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  List<KartModel> gelenVeri = [];
  var box = Hive.box<KartModel>('db');

  @override
  void initState() {
    super.initState();
    if (box.values.isNotEmpty) {
      gelenVeri = box.values.toList();
    } else {
      null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (gelenVeri.isEmpty) {
      return Center(
        child: Text('profilolistr'.tr),
      );
    } else {
      return ListView.builder(
        itemCount: gelenVeri.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              cardTiklama();
            },
            child: Card(
                child: Row(
              children: [
                // ignore: prefer_const_constructors
                Icon(Icons.person, size: 30),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(gelenVeri[index].ad,
                          style: const TextStyle(fontSize: 18)),
                      const SizedBox(height: 14),
                      Text(gelenVeri[index].unvan),
                      const SizedBox(height: 7),
                      Text(gelenVeri[index].sirket),
                      const SizedBox(height: 7),
                      Text(gelenVeri[index].tel),
                      const SizedBox(height: 7),
                      Text(gelenVeri[index].adres),
                      const SizedBox(height: 7),
                      Text(gelenVeri[index].wep),
                    ],
                  ),
                ),
              ],
            )),
          );
        },
      );
    }
  }

  void cardTiklama() {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.update,
                      color: Temalar.temaRenk,
                      size: 30,
                    ),
                    title: Text(
                      'gncl'.tr,
                      style: TextStyle(color: Temalar.temaRenk),
                    ),
                    onTap: () {},
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.shareFromSquare,
                      color: Temalar.temaRenk,
                    ),
                    title: Text('Paylaş'.tr,
                        style: TextStyle(color: Temalar.temaRenk)),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
