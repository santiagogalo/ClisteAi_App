import 'package:clisteai/data/repositories/links_repository.dart';
import 'package:clisteai/domain/entities/user.dart';
import 'package:clisteai/view/pages/ui/color/Colors.dart';
import 'package:clisteai/view/pages/ui/styles/Text_Style.dart';
import 'package:clisteai/view/pages/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TermsandconditionsPage extends StatefulWidget {
  String termsbase;
  String terms;
  String polybase;
  String poly;
  String textaccept;
  void Function() register;
  TermsandconditionsPage(
      {super.key,
      required this.terms,
      required this.poly,
      required this.textaccept,
      required this.termsbase,
      required this.register,
      required this.polybase});

  @override
  State<TermsandconditionsPage> createState() => Tterm_an_conditionPpageState();
}

class Tterm_an_conditionPpageState extends State<TermsandconditionsPage> {
  bool terms = false;
  bool pol = false;
  late String termss;
  late String poly;
  late String termsbase;
  late String polybase;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    termss = widget.terms;
    poly = widget.poly;
    termsbase = widget.termsbase;
    polybase = widget.polybase;
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    terms = !terms;
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: terms ? Color(0xFF202020) : null,
                    border: !terms
                        ? Border.all(color: Colores().textColor_grey, width: 2)
                        : null,
                  ),
                  child: terms
                      ? Center(child: SvgPicture.asset(ImagesVsg().checkIcon))
                      : Container(),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              SizedBox(
                width: media.width * .6,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "$termsbase ", style: Estilos().paragraph_black),
                  TextSpan(
                      text: "$termss.",
                      style: Estilos().link,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          await launchUrl(LinksRepository.termsOfService);
                        }),
                ])),
              )
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    pol = !pol;
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: pol ? Color(0xFF202020) : null,
                    border: !pol
                        ? Border.all(color: Colores().textColor_grey, width: 2)
                        : null,
                  ),
                  child: pol
                      ? Center(child: SvgPicture.asset(ImagesVsg().checkIcon))
                      : Container(),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              SizedBox(
                width: media.width * .6,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "$polybase ", style: Estilos().paragraph_black),
                  TextSpan(
                      text: "$poly.",
                      style: Estilos().link,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          await launchUrl(LinksRepository.privacyPolicy);
                        }),
                ])),
              )
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: widget.register,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: (terms && pol)
                          ? Colores().maincolor_blue
                          : Color(0xFFE2E2E2)),
                  child: Center(
                      child: Text(
                    widget.textaccept,
                    style: Estilos().h1_white,
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
