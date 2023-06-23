import 'package:flutter/material.dart';
import 'package:gezabeautycustomerapp/screens/dashboard/appointment_screen.dart';

import 'package:gezabeautycustomerapp/utils/colors.dart';
import 'package:gezabeautycustomerapp/utils/dimensions.dart';
import 'package:gezabeautycustomerapp/utils/strings.dart';
import 'package:gezabeautycustomerapp/widgets/back_widget.dart';
import 'package:gezabeautycustomerapp/widgets/my_rating.dart';
import 'package:gezabeautycustomerapp/widgets/about_widget.dart';
import 'package:gezabeautycustomerapp/widgets/service_widget.dart';
import 'package:gezabeautycustomerapp/widgets/gallery_widget.dart';
import 'package:gezabeautycustomerapp/widgets/review_widget.dart';

class ParlourDetailsScreen extends StatefulWidget {
  final String name, image, location, rating;

  const ParlourDetailsScreen(
      {super.key,
      superkey,
      required this.name,
      required this.image,
      required this.location,
      required this.rating});

  @override
  _ParlourDetailsScreenState createState() => _ParlourDetailsScreenState();
}

class _ParlourDetailsScreenState extends State<ParlourDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            headerWidget(context),
            detailsWidget(context),
          ],
        ),
      ),
    );
  }

  headerWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Stack(
        children: [
          Image.asset(
            widget.image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.softLight,
          ),
          const BackWidget(),
          Positioned(
            bottom: Dimensions.heightSize * 2,
            left: Dimensions.marginSize,
            right: Dimensions.marginSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.extraLargeTextSize),
                ),
                Text(
                  widget.location,
                  style: TextStyle(
                      color: Colors.white, fontSize: Dimensions.largeTextSize),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyRating(
                      rating: widget.rating,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple[700]),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AppointmentScreen()));
                      },
                      child: Text(
                        Strings.bookNow,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: Dimensions.smallTextSize),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  detailsWidget(BuildContext context) {
    int totalPages = 4;
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.65,
          color: Colors.white,
          child: PageView.builder(
              itemCount: totalPages,
              itemBuilder: (context, index) {
                return Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.0,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 40,
                                  color: index == 0
                                      ? CustomColor.primaryColor
                                      : Colors.black,
                                  child: Center(
                                    child: Text(
                                      Strings.about,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Dimensions.defaultTextSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () => pageViewWidget(1),
                                  child: Container(
                                    height: 40,
                                    color: index == 1
                                        ? CustomColor.primaryColor
                                        : Colors.black,
                                    child: Center(
                                      child: Text(
                                        Strings.service,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                Dimensions.defaultTextSize,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 40,
                                  color: index == 2
                                      ? CustomColor.primaryColor
                                      : Colors.black,
                                  child: Center(
                                    child: Text(
                                      Strings.gallery,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Dimensions.defaultTextSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 40,
                                  color: index == 3
                                      ? CustomColor.primaryColor
                                      : Colors.black,
                                  child: Center(
                                    child: Text(
                                      Strings.review,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: Dimensions.defaultTextSize,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: pageViewWidget(index),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  pageViewWidget(int i) {
    switch (i) {
      case 0:
        return const AboutWidget();
      case 1:
        return const ServiceWidget();
      case 2:
        return const GalleryWidget();
      case 3:
        return const ReviewWidget();
      default:
        return const ServiceWidget();
    }
  }
}
