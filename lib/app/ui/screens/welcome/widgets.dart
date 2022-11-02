

import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/theme/app_colors.dart';

Widget PlanSelect(asset) {
  return Container(
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
  );

}