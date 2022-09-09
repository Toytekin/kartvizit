import 'package:flutter/material.dart';

class SaibitRenkler {
  static SaibitRenkler? _instance;
  static SaibitRenkler get instance {
    _instance ??= _instance = SaibitRenkler._init();
    return _instance!;
  }

  SaibitRenkler._init();

  final Color beyaz = const Color(0xffFFFFFF);
  final Color turuncu = const Color(0xffF08C33);
  final Color turuncuAlternatif = const Color(0xfff47b4d);
  final Color gri = const Color(0xffBBBEC1);
  final Color siyah = const Color(0xff000000);
  final Color griKoyu = const Color(0xff818181);
  final Color griTextformfield = const Color(0xffF7F7F7);
  final Color homeViewTextFormFieldGreyBorder = const Color(0xffCECECE);
  final Color kirmizi = const Color(0xffEE534B);
  final Color yesil = const Color(0xff00c849);
  final Color griPale = const Color(0xfff1f1f1);
  final Color griSlider = const Color(0xffe7e6e6);
}
