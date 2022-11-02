

import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/theme/app_colors.dart';

import '../../../util/device_utils.dart';

Widget DashboardOptions(context, asset, text) {
  return Column(
    children: [
      Container(
        width: 89,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),  // radius of 10
          color: AppColors.appPrimaryColor,
        ),
        child: Image.asset(
          asset,
          width: 40,
        ),
      ),
      SizedBox(
        height: DeviceUtils.getScaledHeight(context, scale: 0.01),
      ),
       Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
          fontFamily: 'Poppins Regular',
          color: AppColors.blackColor,
        ),
      )
    ],
  );

}