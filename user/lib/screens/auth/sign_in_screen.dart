import 'package:flutter/material.dart';

import 'package:gezabeautycustomerapp/utils/colors.dart';
import 'package:gezabeautycustomerapp/utils/dimensions.dart';
import 'package:gezabeautycustomerapp/utils/strings.dart';
import 'package:gezabeautycustomerapp/utils/custom_style.dart';
import 'package:gezabeautycustomerapp/widgets/back_widget.dart';
import 'package:gezabeautycustomerapp/screens/auth/sign_up_screen.dart';
import 'package:gezabeautycustomerapp/dialog/forgot_password_dialog.dart';

import '../dashboard_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _toggleVisibility = true;
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackWidget(),
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
                      padding:
                          const EdgeInsets.only(top: Dimensions.heightSize * 3),
                      child: Text(
                        Strings.signIn,
                        style: TextStyle(
                            fontSize: Dimensions.extraLargeTextSize * 1.2,
                            color: Colors.black),
                      ),
                    ),
                    signInWidget(context)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  signInWidget(BuildContext context) {
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
                    Strings.email,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      hintText: Strings.demoEmail,
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
                      prefixIcon: const Icon(Icons.mail),
                    ),
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
                        onPressed: () {
                          setState(() {
                            _toggleVisibility = !_toggleVisibility;
                          });
                        },
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
                ],
              ),
            )),
        CheckboxListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.rememberMe,
                style: CustomStyle.textStyle,
              ),
              GestureDetector(
                child: Text(
                  Strings.forgotPassword,
                  style: CustomStyle.textStyle,
                ),
                onTap: () {
                  MyDialog.forgotPassword(context);
                },
              ),
            ],
          ),
          value: checkedValue,
          onChanged: (newValue) {
            setState(() {
              checkedValue = newValue!;
            });
          },
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
                  Strings.signInAccount.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.largeTextSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DashboardScreen()));
            },
          ),
        ),
        const SizedBox(height: Dimensions.heightSize * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.ifYouHaveNoAccount,
              style: CustomStyle.textStyle,
            ),
            GestureDetector(
              child: Text(
                Strings.signUp.toUpperCase(),
                style: const TextStyle(
                    color: CustomColor.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignUpScreen()));
              },
            )
          ],
        )
      ],
    );
  }
}
