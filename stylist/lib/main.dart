import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezabeautyexpertapp/controllers/main_controller.dart';
import 'package:gezabeautyexpertapp/screens/auth/sign_in_screen.dart';
import 'package:gezabeautyexpertapp/services/routes.dart';
import 'utils/colors.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final myController = Get.put(MainController);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: getPageRoute(),
      theme: ThemeData(
          primaryColor: CustomColor.primaryColor, fontFamily: 'Montserrat'),
      home: const SignInScreen(),
    );
  }
}
