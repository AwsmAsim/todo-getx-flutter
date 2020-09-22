import 'package:get/get.dart';
import 'package:flutter_get_todo/controllers/auth_controller.dart';

class AuthControllerBinding extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<AuthController>(AuthController());
  }

}