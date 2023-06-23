import 'package:demopod_client/demopod_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezabeautyexpertapp/controllers/main_controller.dart';
import 'package:gezabeautyexpertapp/services/storage/local_storage.dart';

class AuthService {
  var client = Get.find<MainController>().client;
  static bool isLoggedIn = false;

  Future<Map<String, String>?> onRegister(Map<String, dynamic> data) async {
    await Future.delayed(Duration(seconds: 1));
    var person = Person(
        firstName: 'firstName',
        lastName: 'lastName',
        userName: 'userName',
        location: 'location',
        phone: 'phone');
    try {
      var res = await client.person.createPerson(person);
      if (res) {}
    } on Exception catch (e) {
      debugPrint(e.toString());
    }

    isLoggedIn = true;
    await LocalStorage.setLoggedInUser(true);
    return null;
  }

  static Future<Map<String, String>?> loginUser(
      Map<String, dynamic> data) async {
    await Future.delayed(Duration(seconds: 1));
    if (data['email'] != 'email') {
      return {"email": "This email is not registered"};
    } else if (data['password'] != "1234567") {
      return {"password": "Password is incorrect"};
    }

    isLoggedIn = true;
    await LocalStorage.setLoggedInUser(true);
    return null;
  }
}
