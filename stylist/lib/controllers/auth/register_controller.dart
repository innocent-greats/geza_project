import 'package:demopod_client/demopod_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutx/flutx.dart';
import 'package:get/get.dart';
import 'package:gezabeautyexpertapp/controllers/main_controller.dart';
import 'package:gezabeautyexpertapp/screens/auth/general_information_screen.dart';
import 'package:gezabeautyexpertapp/screens/auth/sign_up_screen.dart';
import 'package:gezabeautyexpertapp/services/auth_service.dart';

class RegisterController extends MainController {
  FxFormValidator basicValidator = FxFormValidator();

  bool showPassword = false, loading = false;
  var isLoggedIn = false.obs;
  var phone = false.obs;
  final user = <Person>{}.obs;

  @override
  void onInit() {
    super.onInit();
    debugPrint("Register Controller onInit been called");
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("Register Controller onReady been called");
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint("Register Controller onClose been called");
  }

  Future<void> onRegister(
    String phone,
    String username,
    String firstName,
    String lastName,
    String location,
    String password,
  ) async {
    debugPrint("onRegister method called");
    var person = Person(
        firstName: firstName,
        lastName: lastName,
        userName: username,
        password: password,
        location: location,
        phone: phone);
    debugPrint("onRegister person  $person");
    debugPrint("onRegister Form is valid");
    loading = true;
    update();
    try {
      // delete(person, person);
      var res = await client.person.createPerson(person);
      if (res) {
        debugPrint("createPerson res is: $res");
        Get.toNamed('/register-business');
      }
    } on Exception catch (e) {
      debugPrint('server had an error');
      debugPrint(e.toString());
    }
    Get.to(SignUpScreen());
    loading = false;
    update();
  }

  Future<void> onLogin() async {
    if (basicValidator.validateForm()) {
      loading = true;
      update();
      var errors = await AuthService.loginUser(basicValidator.getData());
      if (errors != null) {
        basicValidator.addErrors(errors);
        basicValidator.validateForm();
        basicValidator.clearErrors();
      }
      Get.toNamed('/starter');

      loading = false;
      update();
    }
  }

  void onChangeShowPassword() {
    showPassword = !showPassword;
    update();
  }

  void gotoLogin() {
    Get.toNamed('/auth/login');
  }

  String getTag() {
    return "register_controller";
  }
}
