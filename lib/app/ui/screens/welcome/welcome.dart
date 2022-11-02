import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/screens/welcome/home.dart';
import 'package:pario_task_4/app/ui/screens/welcome/widgets.dart';

import '../../../util/device_utils.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_strings.dart';
import '../dashboard/dashboard.dart';


class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Stack(
        children: [
          Container(
            height: DeviceUtils.getScaledHeight(context, scale: 1),
            width: DeviceUtils.getScaledWidth(context, scale: 1),
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  top: 80,
                  child: Image.asset(
                    'assets/images/backdrop.png',
                    width: DeviceUtils.getScaledWidth(context, scale: 0.4),
                    height: DeviceUtils.getScaledHeight(context, scale: 0.4),
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 35,
                  child: Image.asset(
                    'assets/images/backdrop.png',
                    width: DeviceUtils.getScaledWidth(context, scale: 0.4),
                    height: DeviceUtils.getScaledHeight(context, scale: 0.3),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/backdrop.png',
                    width: DeviceUtils.getScaledWidth(context, scale: 0.4),
                    height: DeviceUtils.getScaledHeight(context, scale: 0.4),
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 25,
                  bottom: 130,
                  child: Image.asset(
                    'assets/images/backdrop.png',
                    width: DeviceUtils.getScaledWidth(context, scale: 0.4),
                    height: DeviceUtils.getScaledHeight(context, scale: 0.3),
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/profile.png',
                  width: 100,
                   fit: BoxFit.contain,
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                ),
                const Text(
                  Strings.welcome,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.blackColor),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                ),
                const Text(
                  Strings.welcome_sub_text,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.blackColor),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.07),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
                      },
                      child: Column(
                        children: [
                          PlanSelect('assets/images/create.png'),
                          SizedBox(
                            height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                          ),
                          const Text(
                            Strings.create_plan,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                fontFamily: 'Poppins Regular',
                                color: AppColors.blackColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.1),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));

                      },
                      child: Column(
                        children: [
                          PlanSelect('assets/images/open.png'),
                          SizedBox(
                            height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                          ),
                          const Text(
                            Strings.continue_plan,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                fontFamily: 'Poppins Regular',
                                color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
