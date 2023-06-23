import 'package:flutter/material.dart';
import 'package:gezabeautyexpertapp/utils/colors.dart';
import 'package:gezabeautyexpertapp/utils/dimensions.dart';
import 'package:gezabeautyexpertapp/utils/strings.dart';
import 'package:gezabeautyexpertapp/utils/custom_style.dart';
import 'package:gezabeautyexpertapp/screens/auth/sign_in_screen.dart';
import 'package:gezabeautyexpertapp/widgets/weekly_earn_widget.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:gezabeautyexpertapp/widgets/services_calendar_widget.dart';
import 'package:gezabeautyexpertapp/screens/drawer/my_card_screen.dart';
import 'package:gezabeautyexpertapp/screens/drawer/service_list_screen.dart';
import 'package:gezabeautyexpertapp/screens/drawer/expert_list_screen.dart';
import 'package:gezabeautyexpertapp/screens/drawer/coupon_list_screen.dart';
import 'package:gezabeautyexpertapp/screens/drawer/offer_list_screen.dart';
import 'package:gezabeautyexpertapp/screens/change_password_screen.dart';
import 'package:gezabeautyexpertapp/screens/help_support_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: Container(
            color: CustomColor.primaryColor,
            child: ListView(
              //portant: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: profileWidget(context),
                  decoration: const BoxDecoration(
                    color: CustomColor.primaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.account_balance_wallet_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.myWallet,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyCardScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.add_business_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.addService,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ServiceListScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person_add_alt_1_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.addExpert,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ExpertListScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.add_box_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.addCoupon,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CouponListScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.post_add_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.addServiceOffer,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OfferListScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.track_changes_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.changePassword,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChangePasswordScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.settings,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings_applications,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.helpSupport,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HelpSupportScreen()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text(
                    Strings.signOut,
                    style: CustomStyle.listStyle,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignInScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/home_bg.png',
                        height: 250.0,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 250.0,
                        color: CustomColor.primaryColor.withOpacity(0.2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: Dimensions.marginSize * 0.5,
                            right: Dimensions.marginSize * 0.5,
                            top: Dimensions.heightSize * 2,
                            bottom: Dimensions.heightSize * 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.sort,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                if (scaffoldKey.currentState!.isDrawerOpen) {
                                  scaffoldKey.currentState!.openEndDrawer();
                                } else {
                                  scaffoldKey.currentState!.openDrawer();
                                }
                              },
                            ),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                      height: 40,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: const Icon(
                                        Icons.notifications_outlined,
                                        color: CustomColor.primaryColor,
                                      )),
                                  Positioned(
                                    right: -5,
                                    top: -5,
                                    child: Container(
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                          color: CustomColor.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Center(
                                        child: Text(
                                          '02',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  Dimensions.smallTextSize),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: Dimensions.heightSize * 2,
                        left: Dimensions.marginSize,
                        right: Dimensions.marginSize,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.beautyParlour,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimensions.extraLargeTextSize,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: Dimensions.heightSize * 0.5,
                            ),
                            Text(
                              Strings.beautyExpertApp,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Dimensions.largeTextSize,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: Dimensions.heightSize),
                weeklyEarningWidget(context),
                const SizedBox(height: Dimensions.heightSize * 2),
                serviceWidget(context),
                const SizedBox(height: Dimensions.heightSize * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  profileWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimensions.heightSize * 3,
      ),
      child: ListTile(
        leading: Image.asset(
          'assets/images/user.png',
        ),
        title: Text(
          Strings.demoName,
          style: TextStyle(
              color: Colors.white,
              fontSize: Dimensions.largeTextSize,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          Strings.demoPhoneNumber,
          style: TextStyle(
            color: Colors.white,
            fontSize: Dimensions.defaultTextSize,
          ),
        ),
      ),
    );
  }

  weeklyEarningWidget(BuildContext context) {
    return const WeeklyEarnWidget();
  }

  serviceWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize, right: Dimensions.marginSize),
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.totalServices,
                                style: CustomStyle.textStyle,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: Dimensions.heightSize * 0.5,
                              ),
                              Text(
                                '2723',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: Dimensions.largeTextSize * 2,
                                    fontWeight: FontWeight.bold),
                                //textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: Dimensions.widthSize),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.pendingServices,
                                style: CustomStyle.textStyle,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: Dimensions.heightSize * 0.5,
                              ),
                              Text(
                                '523',
                                style: TextStyle(
                                    color: Colors.yellow[800],
                                    fontSize: Dimensions.largeTextSize * 2,
                                    fontWeight: FontWeight.bold),
                                //textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: Dimensions.widthSize),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.completedServices,
                                style: CustomStyle.textStyle,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: Dimensions.heightSize * 0.5,
                              ),
                              Text(
                                '1524',
                                style: TextStyle(
                                    color: Colors.greenAccent[400],
                                    fontSize: Dimensions.largeTextSize * 2,
                                    fontWeight: FontWeight.bold),
                                //textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  completeGoalWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize, right: Dimensions.marginSize),
      child: Column(
        children: [
          // GoalPieChartWidget(),
          const SizedBox(
            height: Dimensions.heightSize * 2,
          ),
          Container(
              height: 350,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: const ServiceCalendarWidget())
        ],
      ),
    );
  }
}
