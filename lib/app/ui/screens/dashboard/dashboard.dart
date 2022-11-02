import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/screens/account/account.dart';
import 'package:pario_task_4/app/ui/screens/dashboard/widgets.dart';

import '../../../util/device_utils.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_strings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: DeviceUtils.getScaledHeight(context, scale: 0.05),
            horizontal: DeviceUtils.getScaledWidth(context, scale: 0.05)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            textDirection: TextDirection.ltr,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hi Olivia',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 26,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.1),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Account()));
                    },
                    child: Image.asset(
                      'assets/images/profile.png',
                      width: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'All you need for your new trip right here',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.blackColor,
                    ),
                  )),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.03),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardOptions(
                      context, 'assets/images/file.png', 'Itinerary'),
                  DashboardOptions(
                      context, 'assets/images/flights.png', 'Flights'),
                  DashboardOptions(
                      context, 'assets/images/baggage.png', 'Pack Help')
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.03),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardOptions(
                      context, 'assets/images/vacation.png', 'Leisure'),
                  DashboardOptions(
                      context, 'assets/images/hotel.png', 'Short Stay'),
                  DashboardOptions(context, 'assets/images/map.png', 'Map')
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.03),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DashboardOptions(
                      context, 'assets/images/banquet.png', 'Resturants'),
                  DashboardOptions(
                      context, 'assets/images/drink.png', 'Drinks'),
                  DashboardOptions(
                      context, 'assets/images/cloud-sun.png', 'Weather')
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.06),
              ),
              Container(
                width: DeviceUtils.getScaledWidth(context, scale: 0.8),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), // radius of 10
                  color: AppColors.appPrimaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      Strings.express_planner,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Poppins Regular',
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Image.asset(
                      'assets/images/cash.png',
                      width: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
