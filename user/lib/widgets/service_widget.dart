import 'package:flutter/material.dart';
import 'package:gezabeautycustomerapp/screens/dashboard/appointment_screen.dart';

import 'package:gezabeautycustomerapp/utils/colors.dart';
import 'package:gezabeautycustomerapp/utils/dimensions.dart';
import 'package:gezabeautycustomerapp/utils/strings.dart';
import 'package:gezabeautycustomerapp/utils/custom_style.dart';
import 'package:gezabeautycustomerapp/data/services.dart';
import 'package:gezabeautycustomerapp/data/offers.dart';

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({super.key});

  @override
  _ServiceWidgetState createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return detailsWidget(context);
  }

  detailsWidget(BuildContext context) {
    int totalPages = 2;
    return Column(
      children: [
        const SizedBox(
          height: Dimensions.heightSize * 2,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                color: Colors.white,
                child: Center(
                  child: Text(
                    Strings.services,
                    style: TextStyle(
                        color: Colors.black,
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
                color: Colors.white,
                child: Center(
                  child: Text(
                    Strings.offers,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.defaultTextSize,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
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
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 3,
                                color: index == 0
                                    ? CustomColor.primaryColor
                                    : Colors.white,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 3,
                                color: index == 1
                                    ? CustomColor.primaryColor
                                    : Colors.white,
                              ),
                            ),
                          ],
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

  pageViewWidget(int index) {
    switch (index) {
      case 0:
        return servicesWidget(context);
      case 1:
        return offersWidget(context);
    }
  }

  servicesWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: ServicesList.list().length,
          itemBuilder: (context, index) {
            Services services = ServicesList.list()[index];
            return Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.marginSize,
                  right: Dimensions.marginSize,
                  bottom: Dimensions.heightSize),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AppointmentScreen()));
                },
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(Dimensions.radius)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          services.image,
                          height: 90,
                          width: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: Dimensions.widthSize),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                services.name,
                                style: TextStyle(
                                    fontSize: Dimensions.largeTextSize,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: Dimensions.heightSize * 0.5,
                              ),
                              Text('${services.service} Types',
                                  style: CustomStyle.textStyle),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: Dimensions.widthSize),
                          child: Container(
                            height: 28,
                            width: 70,
                            decoration: BoxDecoration(
                                color: CustomColor.primaryColor,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                              child: Text(
                                Strings.book,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  offersWidget(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: OffersList.list().length,
          reverse: true,
          itemBuilder: (context, index) {
            Offers offers = OffersList.list()[index];
            return Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.marginSize,
                  right: Dimensions.marginSize,
                  bottom: Dimensions.heightSize),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AppointmentScreen()));
                },
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(Dimensions.radius)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          offers.image,
                          height: 90,
                          width: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: Dimensions.widthSize),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                offers.name,
                                style: TextStyle(
                                    fontSize: Dimensions.largeTextSize,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: Dimensions.heightSize * 0.5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${offers.discount}% Off ',
                                    style: CustomStyle.textStyle,
                                  ),
                                  Text(
                                    '\$${offers.oldPrice} ',
                                    style: const TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  Text('\$${offers.newPrice}',
                                      style: CustomStyle.textStyle),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: Dimensions.widthSize),
                          child: Container(
                            height: 28,
                            width: 70,
                            decoration: BoxDecoration(
                                color: CustomColor.primaryColor,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                              child: Text(
                                Strings.book,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
