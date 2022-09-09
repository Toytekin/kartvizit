import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:kartvizit/base/renkler.dart';

import 'package:kartvizit/pages/dropdawn/kartvizit/kartvizitler.dart';
import 'package:kartvizit/pages/dropdawn/kartvizit/manuel.dart';
import 'package:kartvizit/pages/dropdawn/profil/profil_olustur.dart';
import 'package:kartvizit/pages/dropdawn/profil/profile.dart';
import 'package:kartvizit/theme/theme.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  final scaffoldState = GlobalKey<ScaffoldState>();
  List<Widget> sayfalar = [const KartvizitLer(), const ProfilScreen()];

  int _selectedIndex = 0;
  void _selectScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 20),
        fixedColor: Temalar.temaRenk,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _selectScreen,
        items: [
          BottomNavigationBarItem(
              icon: const FaIcon(FontAwesomeIcons.addressCard),
              label: 'card'.tr),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 1,
        backgroundColor: SaibitRenkler.instance.yesil,
        child: iconugetir(),
        onPressed: () {
          tiklamaOlayi();
        },
      ),
    );
  }

  iconugetir() {
    if (_selectedIndex == 0) {
      setState(() {});
      return const FaIcon(
        FontAwesomeIcons.plus,
        size: 35,
      );
    } else {
      return const FaIcon(
        FontAwesomeIcons.gear,
        size: 35,
      );
    }
  }

  void tiklamaOlayi() {
    if (_selectedIndex == 0) {
      setState(() {});
      showModalBottomSheet<void>(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.camera,
                        color: Temalar.temaRenk,
                      ),
                      title: Text(
                        'Kamera'.tr,
                        style: TextStyle(color: Temalar.temaRenk),
                      ),
                      onTap: () {
                        kameraTiklanma();
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.pen,
                        color: Temalar.temaRenk,
                      ),
                      title: Text('Manuel'.tr,
                          style: TextStyle(color: Temalar.temaRenk)),
                      onTap: () {
                        manuelTiklanma();
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    } else {
      Get.to(
        ProfilOlustur(),
      );
    }
  }

  void kameraTiklanma() {}

  void manuelTiklanma() {
    Get.off(const ManuelEkleme());
  }
}
