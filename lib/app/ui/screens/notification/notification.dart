

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/screens/notification/widget.dart';
import 'package:pario_task_4/app/ui/theme/app_colors.dart';
import 'package:pario_task_4/app/ui/theme/app_strings.dart';

import '../../../util/device_utils.dart';
import 'data.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            bottom: DeviceUtils.getScaledHeight(context, scale: 0.0),
            top: DeviceUtils.getScaledHeight(context, scale: 0.04),
            left:  DeviceUtils.getScaledWidth(context, scale: 0.05),
            right:  DeviceUtils.getScaledWidth(context, scale: 0.05),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              const Text(
                Strings.notification,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  fontFamily: 'Poppins Regular',
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              (notifications.isNotEmpty) ?
              getNotificationWidgets(notifications):
              NotificationEmptyCard(context),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.14),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


Widget getNotificationWidgets(notifications)
{
  List<Widget> list = <Widget>[];
  for(var i = 0; i < notifications.length; i++){
    list.add(NotificationCard(data: notifications[i]));
  }
  return SingleChildScrollView(child: Column(children: list));
}