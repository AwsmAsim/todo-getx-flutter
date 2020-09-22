import 'package:flutter/material.dart';
import 'package:flutter_get_todo/bindings/auth_controller_binding.dart';
import 'screens/root.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Get.put<AuthContoller>(AuthContoller());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      initialBinding: AuthControllerBinding(),
      home: Root(),
    );
  }
}


