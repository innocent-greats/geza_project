import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gezabeautycustomerapp/screens/dashboard/profile_screen.dart';
import 'package:gezabeautycustomerapp/utils/strings.dart';
import 'package:gezabeautycustomerapp/screens/dashboard/home_screen.dart';
import 'package:gezabeautycustomerapp/screens/dashboard/appointment_screen.dart';
import 'package:gezabeautycustomerapp/screens/dashboard/near_by_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

double scaledHeight(BuildContext context, double baseSize) {
  return baseSize * (MediaQuery.of(context).size.height / 800);
}

double scaledWidth(BuildContext context, double baseSize) {
  return baseSize * (MediaQuery.of(context).size.width / 375);
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

int currentIndex = 0;

class _DashboardScreenState extends State<DashboardScreen> {
  DateTime? currentBackPressTime;

  late Color logoColor;
  late int activeIndex;

  var iconData = <IconData>[
    Icons.home,
    Icons.location_on,
    Icons.apps_outlined,
    Icons.person,
  ];

  var badges = <int>[];

  var iconText = <Widget>[
    Text(Strings.home,
        style: const TextStyle(color: Colors.grey, fontSize: 12)),
    Text(Strings.nearby,
        style: const TextStyle(color: Colors.grey, fontSize: 12)),
    Text(Strings.appointed,
        style: const TextStyle(color: Colors.grey, fontSize: 12)),
    Text(Strings.profile,
        style: const TextStyle(color: Colors.grey, fontSize: 12)),
  ];

  var indicatorColors = <Color>[
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.blue,
  ];

  @override
  void initState() {
    logoColor = Color.fromARGB(255, 136, 3, 173);
    activeIndex = 0;
    super.initState();
  }

  void incrementIndex() {
    setState(() {
      activeIndex = activeIndex < (iconData.length - 1) ? activeIndex + 1 : 0;
    });
  }

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  _onTap(int index) {
    activeIndex = index;

    print('indexsd: $index');
  }

  List<Widget> get builderChildren => const <Widget>[
        Text('1', style: TextStyle(color: Colors.red)),
        Text('2', style: TextStyle(color: Colors.grey)),
        Text('3', style: TextStyle(color: Colors.grey)),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
        child: (currentIndex == 0)
            ? HomeScreen()
            : (currentIndex == 1)
                ? const NearByScreen()
                : (currentIndex == 2)
                    ? const AppointmentScreen()
                    : const ProfileScreen(),
      ),
      bottomNavigationBar: Container(
        height: 80.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icons.home,
              // Icons.messenger,
              // Icons.apps_outlined,
              // Icons.person,
              getBottomBarItemTile(
                  0,
                  Icon(
                    iconData[0],
                    color: const Color.fromARGB(255, 156, 3, 195),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  'Home'),
              getBottomBarItemTile(
                  1,
                  Icon(
                    iconData[1],
                    color: const Color.fromARGB(255, 156, 3, 195),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  'Nearby'),
              getBottomBarItemTile(
                  2,
                  Icon(
                    iconData[2],
                    color: const Color.fromARGB(255, 156, 3, 195),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  'Appointment'),
              getBottomBarItemTile(
                  3,
                  Icon(
                    iconData[3],
                    color: const Color.fromARGB(255, 156, 3, 195),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  'Profile'),
            ],
          ),
        ),
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
      return false;
    } else {
      return true;
    }
  }

  getBottomBarItemTile(int index, Widget iconData, String title) {
    return InkWell(
      focusColor: Colors.purple,
      onTap: () {
        changeIndex(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconData,
          Text(
            title,
            style: TextStyle(
              color: (currentIndex == index)
                  ? Colors.purple
                  : Colors.grey.withOpacity(0.6),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  goToScreen(int activeIndex) {
    switch (activeIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return const NearByScreen();
      case 2:
        return const AppointmentScreen();
      case 3:
        return const ProfileScreen();
    }
  }
}
