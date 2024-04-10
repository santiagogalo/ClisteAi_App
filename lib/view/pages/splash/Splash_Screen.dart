import 'package:animate_do/animate_do.dart';
import 'package:clisteai/data/Global/GlobalText.dart';
import 'package:clisteai/domain/entities/user.dart';
import 'package:clisteai/domain/prefs/user_model_prefs.dart';
import 'package:clisteai/view/pages/Home/Home_Page.dart';
import 'package:clisteai/view/pages/languages/Languages.dart';
import 'package:clisteai/view/pages/ui/color/Colors.dart';
import 'package:clisteai/view/pages/ui/styles/Text_Style.dart';
import 'package:clisteai/view/pages/welcome/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    searchlocaldata();
  }

  searchlocaldata() async {
    await Future.delayed(Duration(seconds: 5));
    UserModel? user = await UserModelPrefs.loadUserModel();
    if (user != null) {
      Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            curve: Curves.bounceOut,
            child: HomePage(),
            type: PageTransitionType.topToBottom,
          ),
          (route) => false);
      /* Navigator.pushNamedAndRemoveUntil(
          context, Routes.welcome, (route) => false); */
      // Haz algo con los datos del usuario
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            curve: Curves.bounceOut,
            child: WelcomePage(),
            type: PageTransitionType.topToBottom,
          ),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colores().secondaryColor);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    var media = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: Container(
          color: Colores().secondaryColor,
          child: Column(
            children: [
              Flexible(child: Container()),
              FadeInLeft(child: MyRotatingContainer()),
              FadeInUp(
                child: Text(Langauages.getTranslations(LanguageCode.es).nameapp,
                    style: GoogleFonts.nunito(
                        color: Colores().textColor_white,
                        fontSize: media.width * .13,
                        fontWeight: FontWeight.bold)),
              ),
              Expanded(child: Container()),
              FadeInUp(
                  child: Text("©2024 IntellyDev", style: Estilos().h4_white)),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyRotatingContainer extends StatefulWidget {
  @override
  _MyRotatingContainerState createState() => _MyRotatingContainerState();
}

class _MyRotatingContainerState extends State<MyRotatingContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(); // Repite la animación indefinidamente
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return RotationTransition(
      turns: _controller,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colores().backgroundcolor, shape: BoxShape.circle),
        child: SvgPicture.asset(
          ImagesVsg().logo,
          height: media.width * .5,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
