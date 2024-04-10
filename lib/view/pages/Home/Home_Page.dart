import 'package:clisteai/domain/entities/user.dart';
import 'package:clisteai/view/getx/Controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';

import '../../../domain/prefs/user_model_prefs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controllers stateController = Get.find<Controllers>();
  UserModel? userModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuserData();
  }

  getuserData() async {
    userModel = await UserModelPrefs.loadUserModel();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    var media = MediaQuery.of(context).size;
    return Material(child: Obx(() {
      return Stack(
        children: [
          userModel != null
              ? Scaffold(
                  appBar: AppBar(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(userModel!.urlphoto),
                    ),
                  ),
                )
              : Container(),
          stateController.loading.value
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black38,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container()
        ],
      );
    }));
  }
}
