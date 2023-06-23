import 'package:flutter/material.dart';
import 'package:gezabeautyexpertapp/utils/colors.dart';
import 'package:gezabeautyexpertapp/utils/dimensions.dart';
import 'package:gezabeautyexpertapp/utils/strings.dart';
import 'package:gezabeautyexpertapp/utils/custom_style.dart';
import 'package:gezabeautyexpertapp/widgets/back_widget.dart';
import 'package:gezabeautyexpertapp/screens/add_new_service_screen.dart';
import 'package:gezabeautyexpertapp/widgets/bg_image_widget.dart';
import 'package:gezabeautyexpertapp/data/services.dart';

class ServiceListScreen extends StatefulWidget {
  const ServiceListScreen({super.key});

  @override
  _ServiceListScreenState createState() => _ServiceListScreenState();
}

class _ServiceListScreenState extends State<ServiceListScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimensions.radius * 2),
                              topRight:
                                  Radius.circular(Dimensions.radius * 2))),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Dimensions.heightSize * 3),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                Strings.serviceList,
                                style: TextStyle(
                                    fontSize:
                                        Dimensions.extraLargeTextSize * 1.2,
                                    color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: Dimensions.heightSize,
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
        GestureDetector(
          child: Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: CustomColor.primaryColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(Dimensions.radius * 0.5))),
            child: Center(
              child: Text(
                '${Strings.addNewService.toUpperCase()} +',
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
                    builder: (context) => const AddNewServiceScreen()));
          },
        ),
        const SizedBox(
          height: Dimensions.heightSize * 2,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: ServicesList.list().length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                Services services = ServicesList.list()[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    left: Dimensions.marginSize,
                    right: Dimensions.marginSize,
                    bottom: Dimensions.heightSize,
                  ),
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
                            padding: const EdgeInsets.only(
                                left: Dimensions.widthSize),
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
                                Text('Added ${services.time} month ago',
                                    style: CustomStyle.textStyle),
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Icon(Icons.more_vert),
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
}
