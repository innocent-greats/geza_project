import 'package:flutter/material.dart';
import 'package:gezabeautyexpertapp/utils/dimensions.dart';
import 'package:gezabeautyexpertapp/utils/custom_style.dart';
import 'package:gezabeautyexpertapp/utils/strings.dart';
import 'package:gezabeautyexpertapp/utils/colors.dart';
import 'package:gezabeautyexpertapp/screens/dashboard_screen.dart';
import 'package:gezabeautyexpertapp/widgets/back_widget.dart';
import 'package:gezabeautyexpertapp/widgets/bg_image_widget.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                              topRight:
                                  Radius.circular(Dimensions.radius * 2))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Dimensions.heightSize * 3),
                            child: Text(
                              Strings.rateYourClient,
                              style: TextStyle(
                                  fontSize: Dimensions.extraLargeTextSize * 1.2,
                                  color: Colors.black),
                            ),
                          ),
                          bodyWidget(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bodyWidget(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/user.png',
          height: 80.0,
        ),
        Text(
          'Jonson William',
          style: TextStyle(
              fontSize: Dimensions.largeTextSize,
              fontWeight: FontWeight.bold,
              color: CustomColor.primaryColor),
        ),
        const SizedBox(height: Dimensions.heightSize * 3),
        Padding(
          padding: const EdgeInsets.only(
              left: Dimensions.marginSize, right: Dimensions.marginSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.giveRating,
                style: TextStyle(
                    fontSize: Dimensions.largeTextSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: Dimensions.heightSize,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.behaviour,
                          style: TextStyle(
                              fontSize: Dimensions.largeTextSize,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: Dimensions.heightSize * 0.5,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.payment,
                          style: TextStyle(
                              fontSize: Dimensions.largeTextSize,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: Dimensions.heightSize * 0.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.heightSize * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.meetAgain,
                          style: TextStyle(
                              fontSize: Dimensions.largeTextSize,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: Dimensions.heightSize * 0.5,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.communication,
                          style: TextStyle(
                              fontSize: Dimensions.largeTextSize,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: Dimensions.heightSize * 0.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: Dimensions.heightSize * 3,
              ),
              Text(
                Strings.yourComment,
                style: TextStyle(
                    fontSize: Dimensions.largeTextSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: Dimensions.heightSize * 0.5,
              ),
              TextFormField(
                style: CustomStyle.textStyle,
                controller: commentController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: Strings.demoComment,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 40.0, horizontal: 10.0),
                  labelStyle: CustomStyle.textStyle,
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: CustomStyle.hintTextStyle,
                  focusedBorder: CustomStyle.focusBorder,
                  enabledBorder: CustomStyle.focusErrorBorder,
                  focusedErrorBorder: CustomStyle.focusErrorBorder,
                  errorBorder: CustomStyle.focusErrorBorder,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: Dimensions.heightSize * 3,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: Dimensions.marginSize, right: Dimensions.marginSize),
          child: Column(
            children: [
              GestureDetector(
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: CustomColor.primaryColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(Dimensions.radius * 0.5))),
                  child: Center(
                    child: Text(
                      Strings.done.toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimensions.largeTextSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardScreen()));
                },
              ),
              const SizedBox(
                height: Dimensions.heightSize,
              ),
              GestureDetector(
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                          Radius.circular(Dimensions.radius * 0.5)),
                      border: Border.all(color: CustomColor.primaryColor)),
                  child: Center(
                    child: Text(
                      Strings.notNow.toUpperCase(),
                      style: TextStyle(
                          color: CustomColor.primaryColor,
                          fontSize: Dimensions.largeTextSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardScreen()));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
