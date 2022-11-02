

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../util/device_utils.dart';
import '../../theme/app_colors.dart';
import '../dashboard/dashboard.dart';
import '../notification/notification.dart';
import '../trips/trips.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static PersistentTabController persistentController =
  PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PersistentTabView(
        context,
        controller: persistentController,
        bottomScreenMargin: 0,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        navBarHeight: DeviceUtils.getScaledHeight(context, scale: 0.09),
        backgroundColor: Colors.white,
        // Default is Colors.white.
        handleAndroidBackButtonPress: true,
        // Default is true.
        resizeToAvoidBottomInset: true,
        // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true,
        // Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 500),
        ),
        navBarStyle: NavBarStyle
            .style12, // Choose the nav bar style with this property.
      ),
    );
  }
}


List<Widget> _buildScreens() {
  return [const Dashboard(), const Trips(), const Notifications()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_filled, size: 25),
        title: "Dashboard",

        activeColorPrimary: AppColors.appPrimaryColor,
        inactiveColorPrimary: AppColors.appSecondaryColor),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.verified_user_rounded, size: 25),
      title: "Trips",

      activeColorPrimary: AppColors.appPrimaryColor,
      inactiveColorPrimary: AppColors.appSecondaryColor,
    ),

    PersistentBottomNavBarItem(
      icon: const Icon(Icons.notification_important_rounded, size: 25),
      title: "Notifications",

      activeColorPrimary: AppColors.appPrimaryColor,
      inactiveColorPrimary: AppColors.appSecondaryColor,
    ),
  ];
}
