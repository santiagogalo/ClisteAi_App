import 'package:clisteai/view/getx/Controllers.dart';
import 'package:clisteai/view/pages/languages/Languages.dart';
import 'package:clisteai/view/pages/signin_signup/signin_signup.dart';
import 'package:clisteai/view/pages/ui/color/Colors.dart';
import 'package:clisteai/view/pages/ui/styles/Text_Style.dart';
import 'package:clisteai/view/pages/widgets/showModalBottom_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:page_transition/page_transition.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final Controllers languageController = Get.find<Controllers>();
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    var media = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              ImagesVsg().backgroundimage,
              fit: BoxFit.none,
              alignment: Alignment.center,
            ),
          ),
          Container(
              color: Colors.black45,
              width: media.width * 1,
              height: media.height * 1,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            showmodalMultiWidget(
                                context,
                                Langauages.getTranslations(languageController
                                        .selectedLanguage.value)
                                    .seleclanguage,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        languageController
                                            .changeLanguage(LanguageCode.en);
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(ImagesVsg().englishflag),
                                          Text(
                                            "English",
                                            style: Estilos().h4_black,
                                          )
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        languageController
                                            .changeLanguage(LanguageCode.es);
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(ImagesVsg().spainflag),
                                          Text(
                                            "Español",
                                            style: Estilos().h4_black,
                                          )
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        languageController
                                            .changeLanguage(LanguageCode.pt);
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              ImagesVsg().portuguesflag),
                                          Text(
                                            "Português",
                                            style: Estilos().h4_black,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 25),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colores().backgroundcolor),
                            child: Obx(() {
                              Map<String, dynamic> dataLanguage =
                                  Langauages.getSelectdataLanguage(
                                      languageController
                                          .selectedLanguage.value);
                              return Row(
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                          dataLanguage['image'],
                                        ))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    dataLanguage['title'],
                                    style: GoogleFonts.nunito(
                                        color: Colores().textColor_black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  SvgPicture.asset(ImagesVsg().arrowdropicon)
                                ],
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Obx(() {
                    return Text(
                      Langauages.getTranslations(
                              languageController.selectedLanguage.value)
                          .introtexto,
                      style: GoogleFonts.nunito(
                          fontSize: 30,
                          color: Colores().textColor_white,
                          fontWeight: FontWeight.bold),
                    );
                  }),
                  RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'CLISTE',
                          style: GoogleFonts.nunito(
                              fontSize: media.width * .18,
                              color: Colores().textColor_greywhite,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: 'A',
                          style: GoogleFonts.nunito(
                              fontSize: media.width * .18,
                              color: Colores().textColor_blue,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: 'I',
                          style: GoogleFonts.nunito(
                              fontSize: media.width * .18,
                              color: Colores().textColor_pink,
                              fontWeight: FontWeight.w700),
                        ),
                      ])),
                  Expanded(child: Container()),
                  Center(
                    heightFactor: 0,
                    child: Obx(() => Text(
                          Langauages.getTranslations(
                                  languageController.selectedLanguage.value)
                              .signinup,
                          style: Estilos().h4_white,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colores().backgroundcolor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                ImagesVsg().googlelogo,
                                height: 50,
                                width: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Obx(() {
                                return Text(
                                  Langauages.getTranslations(languageController
                                          .selectedLanguage.value)
                                      .google,
                                  style: Estilos().h4_black,
                                );
                              }),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 2,
                          height: 40,
                          color: Color.fromARGB(97, 112, 112, 112),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: EnterEmail(),
                                    type: PageTransitionType.rightToLeft));
                          },
                          child: Row(
                            children: [
                              Obx(() {
                                return Text(
                                  Langauages.getTranslations(languageController
                                          .selectedLanguage.value)
                                      .mail,
                                  style: Estilos().h4_black,
                                );
                              }),
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                ImagesVsg().mailicon,
                                color: Colores().maincolor_blue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ))),
        ],
      ),
    );
  }
}
