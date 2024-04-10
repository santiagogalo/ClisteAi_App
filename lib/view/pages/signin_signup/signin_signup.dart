import 'dart:developer';

import 'package:clisteai/domain/entities/user.dart';
import 'package:clisteai/domain/prefs/user_model_prefs.dart';
import 'package:clisteai/view/getx/Controllers.dart';
import 'package:clisteai/view/pages/languages/Languages.dart';
import 'package:clisteai/view/pages/signin_signup/terms_and_conditions_page.dart';
import 'package:clisteai/view/pages/ui/color/Colors.dart';
import 'package:clisteai/view/pages/ui/styles/Text_Style.dart';
import 'package:clisteai/view/pages/widgets/showModalBottom_Widget.dart';
import 'package:easy_autocomplete/easy_autocomplete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:uuid/uuid.dart';

class EnterEmail extends StatefulWidget {
  EnterEmail({super.key});

  @override
  State<EnterEmail> createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  late TextEditingController _email;
  List<String> options = ['gmail.com', 'yahoo.com', 'outlook.com'];
  List<String> searchoptionsmail = [];
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
  }

  final Controllers controllerstate = Get.find<Controllers>();

  final _formKey = GlobalKey<FormState>();
  List<String> filteredOptions = [];
  TextEditingController _password = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _lastname = TextEditingController();
  String currentText = '';
  String currentTextPassword = '';
  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Material(
            child: Obx(() {
              return SafeArea(
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  floatingActionButton: FloatingActionButton(
                    backgroundColor: Colores().maincolor_blue,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onPressed: () {
                      log("${pageController.page}");
                      if (_formKey.currentState!.validate()) {
                        if (pageController.page == 3) {
                          showmodalMultiWidget(
                              context,
                              Langauages.getTranslations(
                                      controllerstate.selectedLanguage.value)
                                  .termandcon,
                              TermsandconditionsPage(
                                register: () {
                                  UserModel model = UserModel(
                                      name: _name.text,
                                      lastname: _lastname.text,
                                      email: _email.text,
                                      password: _password.text,
                                      id: Uuid().v1(),
                                      credits: 9999,
                                      urlphoto:
                                          "https://cdn.discordapp.com/attachments/923690069167075368/1219495778607698062/logo_facebook.png?ex=660b82f2&is=65f90df2&hm=098bad12c5908eea112bbe83561427bedc1f6a5a2474343b631e6c19cc0f15be&");
                                  // Guardar UserModel en Shared Preferences
                                  UserModelPrefs.saveUserModel(model);
                                },
                                textaccept: Langauages.getTranslations(
                                        controllerstate.selectedLanguage.value)
                                    .accepttext,
                                polybase: Langauages.getTranslations(
                                        controllerstate.selectedLanguage.value)
                                    .textAceptPersonaldata,
                                poly: Langauages.getTranslations(
                                        controllerstate.selectedLanguage.value)
                                    .personaldataandpyp,
                                termsbase: Langauages.getTranslations(
                                        controllerstate.selectedLanguage.value)
                                    .textAccept,
                                terms: Langauages.getTranslations(
                                        controllerstate.selectedLanguage.value)
                                    .termandcon,
                              ));
                        } else {
                          pageController.nextPage(
                              duration: Duration(milliseconds: 200),
                              curve: Curves.bounceIn);
                        }
                      }
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colores().maincolor_blue),
                        child: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                  body: Form(
                    key: _formKey,
                    child: Container(
                      margin: EdgeInsets.only(top: 24),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              if (pageController.page == 0) {
                                Navigator.pop(context);
                              } else {
                                pageController.previousPage(
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.bounceIn);
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFEFEFEF),
                                  shape: BoxShape.circle),
                              child: Icon(Icons.arrow_back_rounded),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Expanded(
                              child: PageView(
                            physics: NeverScrollableScrollPhysics(),
                            controller: pageController,
                            onPageChanged: (value) {
                              log("$value");
                            },
                            children: [
                              entermail(),
                              enterpassword(),
                              enternName(),
                              enternLastname(),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ));
  }

  Widget entermail() {
    var media = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: media.width * .8,
        ),
        Row(
          children: [
            Text(
              Langauages.getTranslations(controllerstate.selectedLanguage.value)
                      .entermailtext +
                  " ",
              style: Estilos().h1_black,
            ),
            SvgPicture.asset(ImagesVsg().mailicon)
          ],
        ),
        SizedBox(
          height: media.height * .3,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: true,
          onChanged: (text) {
            // Actualiza el texto actual del campo de texto
            setState(() {
              currentText = text;
              filteredOptions = options
                  .where((option) =>
                      option.startsWith(text.substring(text.indexOf('@') + 1)))
                  .toList();
            });
            // Realiza la lógica de filtrado aquí
            // Esto puede variar dependiendo de cómo implementes la lista de opciones y el filtro
          },
          controller: _email,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .emailvali;
            }
            if (!isValidEmail(value)) {
              return Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .emailvali;
            }
            return null; // Retorna null si la validación es exitosa
          },
          style: Estilos().h2_black,
          decoration: InputDecoration(
            hintText: Langauages.getTranslations(
                    controllerstate.selectedLanguage.value)
                .entermailhinttext,
            hintStyle: Estilos().hinttext_h1,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colores().secondaryColor),
            ),
          ),
          cursorColor: Colores().secondaryColor,
        ),
        if (currentText.contains('@'))
          ListView.builder(
            shrinkWrap: true,
            itemCount: filteredOptions.length,
            itemBuilder: (context, index) {
              // Construir el texto completo con la opción actual del filtro
              String suggestedOption =
                  currentText.substring(0, currentText.indexOf('@') + 1) +
                      filteredOptions[index];
              // Mostrar solo las opciones filtradas
              return ListTile(
                title: Text(suggestedOption),
                onTap: () {
                  setState(() {
                    _email.text = suggestedOption;
                    filteredOptions.clear();
                  });
                  FocusScope.of(context).unfocus();
                },
              );
            },
          )
      ],
    );
  }

  Widget enterpassword() {
    var media = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: media.width * .8,
          child: Text(
            Langauages.getTranslations(controllerstate.selectedLanguage.value)
                .enterpasswordtext,
            textAlign: TextAlign.start,
            style: Estilos().h1_black,
          ),
        ),
        SizedBox(
          height: media.height * .3,
        ),
        TextFormField(
          autofocus: true,
          keyboardType: TextInputType.visiblePassword,
          controller: _password,
          onChanged: (value) {
            setState(() {
              currentTextPassword = value;
            });
          },
          obscureText: true,
          validator: (value) {
            if (value == null) {
              return Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .passwordvali;
            }
            if (value.length < 8) {
              return Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .passwordvali;
            }
            return null;
          } /*  PasswordValidator.validate(
              value,
              Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .passwordvali) */
          ,
          style: Estilos().h2_black,
          decoration: InputDecoration(
            hintText: Langauages.getTranslations(
                    controllerstate.selectedLanguage.value)
                .enterpasswordhinttext,
            hintStyle: Estilos().hinttext_h1,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colores().secondaryColor),
            ),
          ),
          cursorColor: Colores().secondaryColor,
        ),
        Text(
          currentTextPassword,
          style: Estilos().h4_black,
        )
      ],
    );
  }

  Widget enternName() {
    var media = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: media.width * .8,
          child: Text(
            Langauages.getTranslations(controllerstate.selectedLanguage.value)
                .addnametext,
            textAlign: TextAlign.start,
            style: Estilos().h1_black,
          ),
        ),
        SizedBox(
          height: media.height * .3,
        ),
        TextFormField(
          textCapitalization: TextCapitalization.sentences,
          autofocus: true,
          keyboardType: TextInputType.name,
          controller: _name,
          style: Estilos().h2_black,
          validator: (value) {
            if (value == null) {
              return Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .namevali;
            }

            if (value.length < 5) {
              return Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .namevali;
            }

            return null;
          },
          decoration: InputDecoration(
            hintText: Langauages.getTranslations(
                    controllerstate.selectedLanguage.value)
                .addnamehinttext,
            hintStyle: Estilos().hinttext_h1,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colores().secondaryColor),
            ),
          ),
          cursorColor: Colores().secondaryColor,
        ),
      ],
    );
  }

  Widget enternLastname() {
    var media = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: media.width * .8,
          child: Text(
            Langauages.getTranslations(controllerstate.selectedLanguage.value)
                .addlastnametext,
            textAlign: TextAlign.start,
            style: Estilos().h1_black,
          ),
        ),
        SizedBox(
          height: media.height * .3,
        ),
        TextFormField(
          textCapitalization: TextCapitalization.sentences,
          validator: (value) {
            if (value == null) {
              return Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .lastnamevali;
            }

            if (value.length < 5) {
              return Langauages.getTranslations(
                      controllerstate.selectedLanguage.value)
                  .lastnamevali;
            }

            return null;
          },
          autofocus: true,
          keyboardType: TextInputType.name,
          controller: _lastname,
          style: Estilos().h2_black,
          decoration: InputDecoration(
            hintText: Langauages.getTranslations(
                    controllerstate.selectedLanguage.value)
                .addlastnamehinttext,
            hintStyle: Estilos().hinttext_h1,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colores().secondaryColor),
            ),
          ),
          cursorColor: Colores().secondaryColor,
        ),
      ],
    );
  }
}

// Función para validar el formato del correo electrónico
bool isValidEmail(String email) {
  // Utiliza una expresión regular para validar el formato del correo electrónico
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
}
