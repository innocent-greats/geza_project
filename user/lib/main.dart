import 'package:get/get_navigation/get_navigation.dart';
import 'package:gezabeautycustomerapp/screens/auth/sign_in_screen.dart';
import 'package:gezabeautycustomerapp/screens/splash_screen.dart';
import 'package:gezabeautycustomerapp/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: CustomColor.primaryColor, fontFamily: 'Montserrat'),
      home: const SignInScreen(),
    );
  }
}
