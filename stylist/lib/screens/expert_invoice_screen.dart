import 'package:flutter/material.dart';

import 'package:gezabeautyexpertapp/utils/colors.dart';
import 'package:gezabeautyexpertapp/utils/dimensions.dart';
import 'package:gezabeautyexpertapp/utils/strings.dart';
import 'package:gezabeautyexpertapp/utils/custom_style.dart';
import 'package:gezabeautyexpertapp/widgets/back_widget.dart';
import 'package:gezabeautyexpertapp/widgets/bg_image_widget.dart';
import 'package:gezabeautyexpertapp/screens/feedback_screen.dart';

class ExpertInvoiceScreen extends StatefulWidget {
  const ExpertInvoiceScreen({super.key});

  @override
  _ExpertInvoiceScreenState createState() => _ExpertInvoiceScreenState();
}

class _ExpertInvoiceScreenState extends State<ExpertInvoiceScreen> {
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
                              Strings.expertInvoice,
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
          'assets/images/qrcode.png',
          height: 200.0,
        ),
        invoiceDetailsWidget(context),
        const SizedBox(height: Dimensions.heightSize * 3),
        Padding(
          padding: const EdgeInsets.only(
              left: Dimensions.marginSize, right: Dimensions.marginSize),
          child: GestureDetector(
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: CustomColor.primaryColor,
                  borderRadius: BorderRadius.all(
                      Radius.circular(Dimensions.radius * 0.5))),
              child: Center(
                child: Text(
                  Strings.iGotPayment.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.largeTextSize,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FeedbackScreen()));
            },
          ),
        ),
      ],
    );
  }

  invoiceDetailsWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize, right: Dimensions.marginSize),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      Strings.demoName,
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Phone',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      Strings.demoPhoneNumber,
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.heightSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Customer ID',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      '4589G',
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Beauty Expert',
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      'Thisha Khan',
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.heightSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.date,
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      '22  May, 2021',
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      Strings.time,
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      '3.00 PM',
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.heightSize),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.discount,
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      '15% off',
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      Strings.amount,
                      style: CustomStyle.textStyle,
                    ),
                    Text(
                      '\$50',
                      style: TextStyle(
                          fontSize: Dimensions.defaultTextSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
