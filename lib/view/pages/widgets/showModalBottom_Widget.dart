import 'package:clisteai/view/getx/Controllers.dart';
import 'package:clisteai/view/pages/languages/Languages.dart';
import 'package:clisteai/view/pages/ui/color/Colors.dart';
import 'package:clisteai/view/pages/ui/styles/Text_Style.dart';
import 'package:flutter/material.dart';

showmodalMultiWidget(BuildContext context, String title, Widget data) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    useSafeArea: true,
    context: context,
    builder: (context) {
      return IntrinsicHeight(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(52), topRight: Radius.circular(52)),
              color: Colores().backgroundcolor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  title,
                  style: Estilos().h2_black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 15,
              ),
              data
            ],
          ),
        ),
      );
    },
  );
}
