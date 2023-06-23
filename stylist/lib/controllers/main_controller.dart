import 'package:demopod_client/demopod_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

abstract class MainController extends GetxController {
  var isServerLive = false.obs;
  var client = Client('http://10.0.2.2:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();
  String? resultMessage;
  String? errorMessage;

  @override
  void onInit() async {
    super.onInit();
    await _callAPiServer();
    debugPrint("Main Controller onInit been called");
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("Main Controller onReady been called");
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint("Main Controller onClose been called");
  }

  _callAPiServer() async {
    try {
      final result = await client.example.hello('Geza is Live');
      resultMessage = result;
      debugPrint("Server Responded:  $result");

      update();
    } on Exception catch (e) {
      errorMessage = '$e';
      debugPrint("Server Responded:  $e");
      update();
    }
  }
}
