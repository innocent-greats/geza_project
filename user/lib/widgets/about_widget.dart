import 'package:flutter/material.dart';

import 'package:gezabeautycustomerapp/utils/colors.dart';
import 'package:gezabeautycustomerapp/utils/dimensions.dart';
import 'package:gezabeautycustomerapp/utils/strings.dart';
import 'package:gezabeautycustomerapp/utils/custom_style.dart';
import 'package:gezabeautycustomerapp/widgets/custom_google_map.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize,
          right: Dimensions.marginSize,
          top: Dimensions.heightSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          aboutWidget(context),
          const SizedBox(
            height: Dimensions.heightSize,
          ),
          // faqWidget(context),
          directionWidget(context),
          const SizedBox(height: Dimensions.heightSize),
        ],
      ),
    );
  }

  aboutWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Why Choose Us',
          style: TextStyle(
              color: Colors.black,
              fontSize: Dimensions.defaultTextSize,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        Text(
          'Contrary to popular belief, Lorem Ipsum is nosimplyrandom text. It has roots in a piece of classical Latin literature 45 BC, making it over 2000 years old',
          style: CustomStyle.textStyle,
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Strings.bullet,
              style: TextStyle(
                  fontSize: Dimensions.defaultTextSize * 2,
                  color: CustomColor.primaryColor),
            ),
            const SizedBox(
              width: Dimensions.heightSize,
            ),
            Expanded(
              child: Text(
                'Distracted by the readable content of a page when looking at its layout',
                style: CustomStyle.textStyle,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Strings.bullet,
              style: TextStyle(
                  fontSize: Dimensions.defaultTextSize * 2,
                  color: CustomColor.primaryColor),
            ),
            const SizedBox(
              width: Dimensions.heightSize,
            ),
            Expanded(
              child: Text(
                'Distracted by the readable content of a page when looking at its layout',
                style: CustomStyle.textStyle,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        Text(
          'Our Mission and Vision',
          style: TextStyle(
              color: Colors.black,
              fontSize: Dimensions.defaultTextSize,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        Text(
          'Contrary to popular belief, Lorem Ipsum is nosimplyrandom text. It has roots in a piece of classical Latin literature 45 BC, making it over 2000 years old',
          style: CustomStyle.textStyle,
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Strings.bullet,
              style: TextStyle(
                  fontSize: Dimensions.defaultTextSize * 2,
                  color: CustomColor.primaryColor),
            ),
            const SizedBox(
              width: Dimensions.heightSize,
            ),
            Expanded(
              child: Text(
                'Distracted by the readable content of a page when looking at its layout',
                style: CustomStyle.textStyle,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Strings.bullet,
              style: TextStyle(
                  fontSize: Dimensions.defaultTextSize * 2,
                  color: CustomColor.primaryColor),
            ),
            const SizedBox(
              width: Dimensions.heightSize,
            ),
            Expanded(
              child: Text(
                'Distracted by the readable content of a page when looking at its layout',
                style: CustomStyle.textStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }

  directionWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.salonDestination,
          style: TextStyle(
              color: Colors.black,
              fontSize: Dimensions.defaultTextSize,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        SizedBox(
          height: 150.0,
          child: CustomGoogleMap.map,
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        const Row(
          children: [
            Icon(
              Icons.location_on,
              color: CustomColor.primaryColor,
            ),
            SizedBox(
              width: Dimensions.widthSize * 0.5,
            ),
            Text('58 Street18c - Matingo Mutare')
          ],
        ),
        const SizedBox(
          height: Dimensions.heightSize,
        ),
        const Row(
          children: [
            Icon(
              Icons.bus_alert,
              color: CustomColor.primaryColor,
            ),
            SizedBox(
              width: Dimensions.widthSize * 0.5,
            ),
            Text('10 min By ZUPCO without traffic')
          ],
        ),
      ],
    );
  }
}
