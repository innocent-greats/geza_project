import 'package:flutter/material.dart';
import 'package:gezabeautycustomerapp/screens/add_new_card_screen.dart';
import 'package:gezabeautycustomerapp/screens/auth/sign_in_screen.dart';
import 'package:gezabeautycustomerapp/screens/change_password_screen.dart';
import 'package:gezabeautycustomerapp/screens/dashboard/appointment_history_screen.dart';
import 'package:gezabeautycustomerapp/utils/colors.dart';
import 'package:gezabeautycustomerapp/utils/dimensions.dart';
import 'package:gezabeautycustomerapp/utils/strings.dart';
import 'package:gezabeautycustomerapp/utils/custom_style.dart';
import 'package:gezabeautycustomerapp/data/category.dart';
import 'package:gezabeautycustomerapp/data/popular_parlour.dart';
import 'package:gezabeautycustomerapp/data/popular_category.dart';
import 'package:gezabeautycustomerapp/data/near_by.dart';
import 'package:gezabeautycustomerapp/data/barber.dart';
import 'package:gezabeautycustomerapp/screens/barber_details_screen.dart';
import 'package:gezabeautycustomerapp/screens/search_result_screen.dart';
import 'package:gezabeautycustomerapp/screens/parlour_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Strings.addPaymentMethod,
                  style: CustomStyle.listStyle,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddNewCardScreen()));
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
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/popular_category/stylist00.png',
                      height: 250.0,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
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
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) =>
                                            const AppointmentHistoryScreen()));
                                  },
                                  child: Container(
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
                                ),
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
                                            fontSize: Dimensions.smallTextSize),
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
                            Strings.beautyParlourBookingApp,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Dimensions.largeTextSize,
                            ),
                          ),
                          const SizedBox(
                            height: Dimensions.heightSize * 2,
                          ),
                          TextFormField(
                            style: CustomStyle.textStyle,
                            controller: searchController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: Strings.spaFacialMakeup,
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
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.search),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchResultScreen()));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              categoryWidget(context),
              const SizedBox(
                height: Dimensions.heightSize,
              ),
              trendingHairStylesWidget(context),
              const SizedBox(
                height: Dimensions.heightSize,
              ),
            ],
          ),
        ),
      ),
    );
  }

  categoryWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.marginSize * 1, top: Dimensions.heightSize * 2),
      child: SizedBox(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: CategoryList.list().length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Category category = CategoryList.list()[index];
            return Padding(
              padding: const EdgeInsets.only(right: Dimensions.widthSize * 3),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SearchResultScreen()));
                },
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: CustomColor.secondaryColor,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Image.asset(category.image),
                    ),
                    const SizedBox(
                      height: Dimensions.heightSize,
                    ),
                    Text(
                      category.name,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  trendingHairStylesWidget(BuildContext context) {
    return SizedBox(
      height: 260,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: Dimensions.marginSize),
            child: Text(
              Strings.popularBeautyParlour,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.extraLargeTextSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: Dimensions.heightSize),
          Padding(
            padding: const EdgeInsets.only(left: Dimensions.marginSize),
            child: SizedBox(
              height: 210,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: PopularParlourList.list().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  PopularParlour popularParlour =
                      PopularParlourList.list()[index];
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: Dimensions.widthSize * 2),
                    child: GestureDetector(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 150,
                              width: 180,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius),
                                    child: Image.asset(
                                      popularParlour.image,
                                      height: 150,
                                      width: 180,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20.0,
                                    left: 10,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: CustomColor.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(13)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              Text(
                                                popularParlour.rating,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: Dimensions
                                                        .smallTextSize,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: Dimensions.widthSize * 0.5,
                                        ),
                                        Container(
                                          height: 25,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: CustomColor.secondaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(13)),
                                          child: Center(
                                            child: Text(
                                              popularParlour.status,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      Dimensions.smallTextSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  popularParlour.name,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: Dimensions.largeTextSize,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: Dimensions.heightSize * 0.5,
                                ),
                                Text(
                                  popularParlour.location,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Dimensions.defaultTextSize,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ParlourDetailsScreen(
                                  name: popularParlour.name,
                                  image: popularParlour.image,
                                  location: popularParlour.location,
                                  rating: popularParlour.rating,
                                )));
                      },
                    ),
                  );
                },
              ),
            ),
          )
        ],
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
}
