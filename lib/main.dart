import 'package:clisteai/view/getx/Controllers.dart';
import 'package:clisteai/view/pages/languages/Languages.dart';
import 'package:clisteai/view/pages/splash/Splash_Screen.dart';
import 'package:clisteai/view/pages/ui/color/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(Controllers());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Inicializar el controlador de idioma
    Controllers languageController = Get.put(Controllers());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ClisteAI',
      theme: ThemeData.light(useMaterial3: false),
      color: Colores().maincolor_blue,
      home: SplashScreen(),
    );
  }
}
