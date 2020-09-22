import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_get_todo/controllers/auth_controller.dart';
class SettingsPage extends GetWidget<AuthController> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              child: Container(
                height: Get.width-150,
                width: Get.width-150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(Get.width-100),),
                  color: Colors.white,
                  border: Border.all(color: Colors.redAccent,
                  width: 5.0),
                ),
                child: Icon(Icons.power_settings_new,
                  color: Colors.redAccent,
                  size: Get.width-200,
                ),
              ),
              onTap: (){
                controller.signOut();
              },
            ),
          ),

        ],
      ),
    );
  }
}
