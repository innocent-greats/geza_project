import 'package:gezabeautyexpertapp/screens/dashboard/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:gezabeautyexpertapp/utils/colors.dart';
import 'package:gezabeautyexpertapp/utils/dimensions.dart';
import 'package:gezabeautyexpertapp/utils/strings.dart';
import 'package:gezabeautyexpertapp/utils/custom_style.dart';
import 'package:gezabeautyexpertapp/widgets/back_widget.dart';
import 'package:gezabeautyexpertapp/screens/auth/sign_in_screen.dart';
import 'package:gezabeautyexpertapp/widgets/bg_image_widget.dart';

class GeneralInformationScreen extends StatelessWidget {
  GeneralInformationScreen({
    super.key,
  });
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  List<String> specialist = ['Hair Cut', 'Spa', 'Body Message'];
  late String selectedSpecialist;
  // selectedSpecialist = specialist[0].toString();

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
                          padding: const EdgeInsets.only(
                              top: Dimensions.heightSize * 3),
                          child: Text(
                            Strings.generalInformation,
                            style: TextStyle(
                                fontSize: Dimensions.extraLargeTextSize * 1.2,
                                color: Colors.black),
                          ),
                        ),
                        generalInfoWidget(context)
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

  generalInfoWidget(BuildContext context) {
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
                    Strings.parlourName,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: Strings.beautyParlour,
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
                    ),
                  ),
                  const SizedBox(height: Dimensions.heightSize),
                  Text(
                    Strings.address,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: Dimensions.heightSize * 0.5,
                  ),
                  TextFormField(
                    style: CustomStyle.textStyle,
                    controller: addressController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: Strings.address,
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
                    ),
                  ),
                  const SizedBox(height: Dimensions.heightSize),
                  Text(
                    Strings.specialities,
                    style: CustomStyle.textStyle,
                  ),
                  const SizedBox(height: Dimensions.heightSize * 0.5),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(Dimensions.radius)),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: Dimensions.marginSize * 0.5,
                          right: Dimensions.marginSize * 0.5),
                      child: DropdownButton(
                        isExpanded: true,
                        underline: Container(),
                        hint: Text(
                          selectedSpecialist,
                          style: CustomStyle.textStyle,
                        ), // Not necessary for Option 1
                        value: selectedSpecialist,
                        onChanged: (newValue) {},
                        items: specialist.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value,
                              style: CustomStyle.textStyle,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            )),
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
                  Strings.createAccount.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.largeTextSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignInScreen()));
              },
            )
          ],
        )
      ],
    );
  }
}
