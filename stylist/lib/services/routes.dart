import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezabeautyexpertapp/screens/auth/general_information_screen.dart';
import 'package:gezabeautyexpertapp/screens/auth/sign_in_screen.dart';
import 'package:gezabeautyexpertapp/screens/auth/sign_up_screen.dart';
import 'package:gezabeautyexpertapp/screens/dashboard/home_screen.dart';
import 'package:gezabeautyexpertapp/screens/dashboard_screen.dart';
import 'package:gezabeautyexpertapp/services/auth_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return AuthService.isLoggedIn ? null : RouteSettings(name: '/auth/login');
  }
}

getPageRoute() {
  var routes = [
    GetPage(
        name: '/',
        page: () => const HomeScreen(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: '/dashboard',
        page: () => const DashboardScreen(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: '/register/business',
        page: () => GeneralInformationScreen(),
        middlewares: [AuthMiddleware()]),
    GetPage(name: '/auth/login', page: () => const SignInScreen()),
    GetPage(name: '/register/person', page: () => SignUpScreen()),
  ];

  return routes
      .map((e) => GetPage(
          name: e.name,
          page: e.page,
          middlewares: e.middlewares,
          transition: Transition.noTransition))
      .toList();
}
