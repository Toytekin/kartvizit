import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'card': 'Business card',
          'kamera': 'Camera',
          'Manuel': 'Manual',
          'kaydet': 'Save',
          'adsyd': 'Name Surname',
          'sirket': 'Company',
          'unvan': 'Lisans / Title',
          'tel': 'Phone Number',
          'Paylaş': 'Share',
          'gncl': 'The Profile Update',
          'profilolistr': 'Failed to create profile',
        },
        'tr_TR': {
          'card': 'Kartvizit',
          'kamera': 'Kamera',
          'Manuel': 'Manuel',
          'kaydet': 'Kaydet',
          'adsyd': 'Ad Soyad',
          'sirket': 'Şirket',
          'unvan': 'Ünvan',
          'tel': 'Telefon Numarası',
          'Paylaş': 'Paylaş',
          'gncl': 'Profilini Güncelle',
          'profilolistr': 'Profil oluşuturulmadı',
        }
      };
}
