

import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/theme/app_colors.dart';
import 'package:pario_task_4/app/ui/theme/app_strings.dart';
import 'package:pario_task_4/app/util/device_utils.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, size: 30, color: AppColors.appTertiaryColor,)),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.04),
                  ),
                  const Text(
                    Strings.account,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              Container(
                width: DeviceUtils.getScaledWidth(context, scale: 0.9),
                 padding: EdgeInsets.symmetric(
                    vertical: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    horizontal: DeviceUtils.getScaledWidth(context, scale: 0.04)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // radius of 10
                    color: AppColors.appPrimaryColor),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/profile.png',
                      width: 60,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.02),
                    ),
                    Column(
                      children: const [
                        Text(
                          'Olivia Scott',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Poppins Regular',
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          'ui/ux Designer',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'Poppins Regular',
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.edit_outlined,
                      color: AppColors.whiteColor,
                      size: 24,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.06),
              ),
              const ListTile(
                title: Text('Profile',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins SemiBold',
                    color: AppColors.appPrimaryColor,
                  ),),
                subtitle: Text('Manage changes to your account', textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.appPrimaryColor,
                    )),
                leading: Icon(Icons.person, size: 25, color: AppColors.appPrimaryColor,),
                trailing: Icon(Icons.keyboard_arrow_right, size: 30, color: AppColors.appPrimaryColor,),
              ),
              Divider(
                thickness: 1, // thickness of the line
                indent: DeviceUtils.getScaledWidth(context, scale: 0.17), // empty space to the leading edge of divider.
                endIndent: 20, // empty space to the trailing edge of the divider.
                color: AppColors.appPrimaryColor, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              const ListTile(
                title: Text('Cards',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins SemiBold',
                    color: AppColors.appPrimaryColor,
                  ),),
                subtitle: Text('Secure your cards for safety', textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.appPrimaryColor,
                    )),
                leading: Icon(Icons.credit_card, size: 25, color: AppColors.appPrimaryColor,),
                trailing: Icon(Icons.keyboard_arrow_right, size: 30, color: AppColors.appPrimaryColor,),
              ),
              Divider(
                thickness: 1, // thickness of the line
                indent: DeviceUtils.getScaledWidth(context, scale: 0.17), // empty space to the leading edge of divider.
                endIndent: 20, // empty space to the trailing edge of the divider.
                color: AppColors.appPrimaryColor, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              const ListTile(
                title: Text('Preferences',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins SemiBold',
                    color: AppColors.appPrimaryColor,
                  ),),
                subtitle: Text('Customize your app', textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.appPrimaryColor,
                    )),
                leading: Icon(Icons.settings, size: 25, color: AppColors.appPrimaryColor,),
                trailing: Icon(Icons.keyboard_arrow_right, size: 30, color: AppColors.appPrimaryColor,),
              ),
              Divider(
                thickness: 1, // thickness of the line
                indent: DeviceUtils.getScaledWidth(context, scale: 0.17), // empty space to the leading edge of divider.
                endIndent: 20, // empty space to the trailing edge of the divider.
                color: AppColors.appPrimaryColor, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              const ListTile(
                title: Text('Logout',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Poppins SemiBold',
                    color: AppColors.appPrimaryColor,
                  ),),
                subtitle: Text('Logout for your account', textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Poppins Regular',
                      color: AppColors.appPrimaryColor,
                    )),
                leading: Icon(Icons.person, size: 25, color: AppColors.appPrimaryColor),
                trailing: Icon(Icons.keyboard_arrow_right, size: 30, color: AppColors.appPrimaryColor,),
              ),
              Divider(
                thickness: 1, // thickness of the line
                indent: DeviceUtils.getScaledWidth(context, scale: 0.17), // empty space to the leading edge of divider.
                endIndent: 20, // empty space to the trailing edge of the divider.
                color: AppColors.appPrimaryColor, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
            ],
          ),
        ),
      ),
    );
  }
}
