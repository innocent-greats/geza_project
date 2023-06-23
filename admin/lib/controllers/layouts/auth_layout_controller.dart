import 'package:flatten/controllers/my_controller.dart';
import 'package:flutter/material.dart';

class AuthLayoutController extends MyController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final scrollKey = GlobalKey();

  @override
  String getTag() {
    return "auth_layout_controller";
  }
}
