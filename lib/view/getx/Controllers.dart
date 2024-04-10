import 'dart:developer';

import 'package:clisteai/view/pages/languages/Languages.dart';
import 'package:get/get.dart';

class Controllers extends GetxController {
  static Controllers get to => Get.find();

  ///[Controlador de cargado]
  Rx<bool> loading = RxBool(false);
  void changeloading(bool state) {
    log("CAMBIANDO");
    loading.value = state;
  }

  ///[Controlador de idioma]
  Rx<LanguageCode> selectedLanguage = LanguageCode.en.obs;

  void changeLanguage(LanguageCode language) {
    log("CAMBIANDO");
    selectedLanguage.value = language;
  }
}
