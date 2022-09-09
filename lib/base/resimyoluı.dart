class ResimYolu {
  static ResimYolu? _resim;
  static ResimYolu get instance {
    _resim ??= _resim = ResimYolu._init();
    return _resim!;
  }

  ResimYolu._init();
  String get onboardingBackground => toPng('onboarding_background');
  String get item_01 => toPng('item-01');
  String get item_02 => toPng('item-02');
  String get item_03 => toPng('item-03');
  String get item_04 => toPng('item-04');
  String get item_05 => toPng('item-05');
  String get item_06 => toPng('item-06');
  String get item_07 => toPng('item-07');
  String get fon => toPng('fon');
  String get logo => toPng('logo');
  String get bookLogo => toPng("books");
  String get empty => toPng("empty");
  String get menu1 => toPng("menu1");
  String get menu2 => toPng("menu2");
  String get menu3 => toPng("menu3");
  String get menu4 => toPng("menu4");
  String get menu5 => toPng("menu5");

  String toPng(value) => 'assets/$value.png';
}
