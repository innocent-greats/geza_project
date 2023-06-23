import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezabeautyexpertapp/controllers/auth/register_controller.dart';

import 'package:gezabeautyexpertapp/utils/colors.dart';
import 'package:gezabeautyexpertapp/utils/dimensions.dart';
import 'package:gezabeautyexpertapp/utils/strings.dart';
import 'package:gezabeautyexpertapp/utils/custom_style.dart';
import 'package:gezabeautyexpertapp/widgets/back_widget.dart';
import 'package:gezabeautyexpertapp/widgets/bg_image_widget.dart';
import 'package:gezabeautyexpertapp/screens/auth/general_information_screen.dart';
import 'package:gezabeautyexpertapp/screens/auth/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final registerController = Get.put(RegisterController());
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  bool _toggleVisibility = true;
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: Stack(
        children: [
          const BgImageWidget(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const BackWidget(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: CustomColor.accentColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius * 2),
                            topRight: Radius.circular(Dimensions.radius * 2))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: Dimensions.heightSize * 5),
                          child: Text(
                            Strings.signUp,
                            style: TextStyle(
                                fontSize: Dimensions.extraLargeTextSize * 1.5,
                                color: Colors.black),
                          ),
                        ),
                        signUpWidget(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  signUpWidget(BuildContext context) {
    return Column(
      children: [
        Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: Dimensions.heightSize * 2,
                  left: Dimensions.marginSize,
                  right: Dimensions.marginSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.location,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: locationController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(

                        // hintText: Strings.demoPhoneNumber,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelStyle: CustomStyle.textStyle,
                        filled: true,
                        fillColor: CustomColor.accentColor,
                        hintStyle: CustomStyle.textStyle,
                        focusedBorder: CustomStyle.focusBorder,
                        enabledBorder: CustomStyle.focusErrorBorder,
                        focusedErrorBorder: CustomStyle.focusErrorBorder,
                        errorBorder: CustomStyle.focusErrorBorder,
                        prefixIcon: const Icon(Icons.location_city)),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  Text(
                    Strings.phone,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: Strings.demoPhoneNumber,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelStyle: CustomStyle.textStyle,
                        filled: true,
                        fillColor: CustomColor.accentColor,
                        hintStyle: CustomStyle.textStyle,
                        focusedBorder: CustomStyle.focusBorder,
                        enabledBorder: CustomStyle.focusErrorBorder,
                        focusedErrorBorder: CustomStyle.focusErrorBorder,
                        errorBorder: CustomStyle.focusErrorBorder,
                        prefixIcon: const Icon(Icons.phone_android)),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  Text(
                    Strings.username,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: usernameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: Strings.demoUserName,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelStyle: CustomStyle.textStyle,
                        filled: true,
                        fillColor: CustomColor.accentColor,
                        hintStyle: CustomStyle.textStyle,
                        focusedBorder: CustomStyle.focusBorder,
                        enabledBorder: CustomStyle.focusErrorBorder,
                        focusedErrorBorder: CustomStyle.focusErrorBorder,
                        errorBorder: CustomStyle.focusErrorBorder,
                        prefixIcon: const Icon(Icons.phone_android)),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  Text(
                    Strings.firstName,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: firstNameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: Strings.demoFirstName,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelStyle: CustomStyle.textStyle,
                        filled: true,
                        fillColor: CustomColor.accentColor,
                        hintStyle: CustomStyle.textStyle,
                        focusedBorder: CustomStyle.focusBorder,
                        enabledBorder: CustomStyle.focusErrorBorder,
                        focusedErrorBorder: CustomStyle.focusErrorBorder,
                        errorBorder: CustomStyle.focusErrorBorder,
                        prefixIcon: const Icon(Icons.person)),
                    // onChanged: ,
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  Text(
                    Strings.lastName,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: lastNameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: Strings.demoLastName,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        labelStyle: CustomStyle.textStyle,
                        filled: true,
                        fillColor: CustomColor.accentColor,
                        hintStyle: CustomStyle.textStyle,
                        focusedBorder: CustomStyle.focusBorder,
                        enabledBorder: CustomStyle.focusErrorBorder,
                        focusedErrorBorder: CustomStyle.focusErrorBorder,
                        errorBorder: CustomStyle.focusErrorBorder,
                        prefixIcon: const Icon(Icons.person_2_sharp)),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize,
                  ),
                  Text(
                    Strings.password,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: Strings.typePassword,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      labelStyle: CustomStyle.textStyle,
                      focusedBorder: CustomStyle.focusBorder,
                      enabledBorder: CustomStyle.focusErrorBorder,
                      focusedErrorBorder: CustomStyle.focusErrorBorder,
                      errorBorder: CustomStyle.focusErrorBorder,
                      filled: true,
                      fillColor: CustomColor.accentColor,
                      hintStyle: CustomStyle.textStyle,
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: _toggleVisibility
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.black,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: Colors.black,
                              ),
                      ),
                    ),
                    obscureText: _toggleVisibility,
                  ),
                  const SizedBox(height: Dimensions.heightSize),
                  const SizedBox(height: Dimensions.heightSize),
                ],
              ),
            )),
        CheckboxListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "By clicking sign up you agree to the following ",
                style: CustomStyle.textStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Text(
                      "Terms and Conditions",
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.blueColor,
                          decoration: TextDecoration.underline),
                    ),
                    onTap: () {
                      print('go to privacy url');
                      _showTermsConditions(context);
                    },
                  ),
                  Text(
                    " with out reservation",
                    style: CustomStyle.textStyle,
                  ),
                ],
              )
            ],
          ),
          value: checkedValue,
          onChanged: (newValue) {},
          controlAffinity:
              ListTileControlAffinity.leading, //  <-- leading Checkbox
        ),
        const SizedBox(height: Dimensions.heightSize * 2),
        Padding(
          padding: const EdgeInsets.only(
              left: Dimensions.marginSize, right: Dimensions.marginSize),
          child: GestureDetector(
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: CustomColor.primaryColor,
                  borderRadius:
                      BorderRadius.all(Radius.circular(Dimensions.radius))),
              child: Center(
                child: Text(
                  Strings.next.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.largeTextSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              registerController.onRegister(
                phoneController.text,
                usernameController.text,
                firstNameController.text,
                lastNameController.text,
                locationController.text,
                passwordController.text,
              );
            },
          ),
        ),
        const SizedBox(height: Dimensions.heightSize * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.alreadyHaveAnAccount,
              style: CustomStyle.textStyle,
            ),
            GestureDetector(
              child: Text(
                Strings.signIn.toUpperCase(),
                style: const TextStyle(
                    color: CustomColor.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.to(const SignInScreen());
              },
            )
          ],
        )
      ],
    );
  }

  Future<bool> _showTermsConditions(context) async {
    return (await showDialog(
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: CustomColor.primaryColor,
            child: Stack(
              children: [
                Positioned(
                    top: -35.0,
                    left: -50.0,
                    child: Image.asset('assets/images/splash_logo.png')),
                Positioned(
                    right: -35.0,
                    bottom: -20.0,
                    child: Image.asset('assets/images/splash_logo.png')),
                Padding(
                  padding: const EdgeInsets.only(
                      top: Dimensions.defaultPaddingSize * 2,
                      bottom: Dimensions.defaultPaddingSize * 2),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: AlertDialog(
                        content: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 45,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: Dimensions.heightSize * 2,
                                ),
                                Text(
                                  Strings.ourPolicyTerms,
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: Dimensions.largeTextSize,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: Dimensions.heightSize),
                                Text(
                                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old',
                                  style: CustomStyle.textStyle,
                                ),
                                const SizedBox(height: Dimensions.heightSize),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '•',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: CustomColor.accentColor,
                                          fontSize:
                                              Dimensions.extraLargeTextSize),
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'simply random text. It has roots in a piece of classical Latin literature ',
                                        style: CustomStyle.textStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: Dimensions.heightSize),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '•',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: CustomColor.accentColor,
                                          fontSize:
                                              Dimensions.extraLargeTextSize),
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Distracted by the readable content of a page when looking at its layout.',
                                        style: CustomStyle.textStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: Dimensions.heightSize),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '•',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: CustomColor.accentColor,
                                          fontSize:
                                              Dimensions.extraLargeTextSize),
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Available, but the majority have suffered alteration',
                                        style: CustomStyle.textStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: Dimensions.heightSize * 2,
                                ),
                                Text(
                                  'When do we contact information ?',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: Dimensions.largeTextSize,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: Dimensions.heightSize),
                                Text(
                                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old',
                                  style: CustomStyle.textStyle,
                                ),
                                const SizedBox(
                                  height: Dimensions.heightSize * 2,
                                ),
                                Text(
                                  'Do we use cookies ?',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: Dimensions.largeTextSize,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: Dimensions.heightSize),
                                Text(
                                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old',
                                  style: CustomStyle.textStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 35.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                          color: CustomColor.secondaryColor,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5.0))),
                                      child: Center(
                                        child: Text(
                                          Strings.decline,
                                          style: TextStyle(
                                              color: CustomColor.primaryColor,
                                              fontSize:
                                                  Dimensions.defaultTextSize,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      height: 35.0,
                                      width: 100.0,
                                      decoration: const BoxDecoration(
                                          color: CustomColor.primaryColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0))),
                                      child: Center(
                                        child: Text(
                                          Strings.agree,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  Dimensions.defaultTextSize,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        )) ??
        false;
  }
}
