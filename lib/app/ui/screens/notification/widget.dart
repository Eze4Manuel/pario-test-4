import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/theme/app_colors.dart';
import 'package:pario_task_4/app/ui/theme/app_strings.dart';

import '../../../util/device_utils.dart';

Widget NotificationEmptyCard(context) {
  return Container(
    width: DeviceUtils.getScaledWidth(context, scale: 0.9),
    height: 130,
    padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getScaledHeight(context, scale: 0.02),
        horizontal: DeviceUtils.getScaledWidth(context, scale: 0.04)),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), // radius of 10
        color: AppColors.appPrimaryColor),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          Strings.no_notification,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Poppins Regular',
              color:  AppColors.appSecondaryColor),
        ),
        Icon(
          Icons.close,
          color:  AppColors.appSecondaryColor,
          size: 20,
        )
      ],
    ),
  );
}

class NotificationCard extends StatelessWidget {
  dynamic data;
   NotificationCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: DeviceUtils.getScaledWidth(context, scale: 0.9),
        margin: EdgeInsets.symmetric(
          vertical: DeviceUtils.getScaledHeight(context, scale: 0.01)
        ),
        padding: EdgeInsets.symmetric(
            vertical: DeviceUtils.getScaledHeight(context, scale: 0.02),
            horizontal: DeviceUtils.getScaledWidth(context, scale: 0.04)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), // radius of 10
            color: !data['isDark']
                ? AppColors.appSecondaryColor
                : AppColors.appPrimaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['title'],
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Poppins Regular',
                            color: data['isDark']
                                ? AppColors.appSecondaryColor
                                : AppColors.appTertiaryColor),
                      ),
                      SizedBox(
                        width: DeviceUtils.getScaledWidth(context, scale: 0.02),
                      ),
                      Image.asset(
                        data['image'],
                        width: DeviceUtils.getScaledWidth(context, scale: (0.05)),
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.75),
                    child: Text(
                      data['description'],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Poppins Regular',
                          color: data['isDark']
                              ? AppColors.appSecondaryColor
                              : AppColors.appPrimaryColor),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: !data['isDark']
                              ? AppColors.appPrimaryColor
                              : AppColors.whiteColor,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(3)),
                          border: Border.all(
                              color: data['isDark']
                                  ? AppColors.appPrimaryColor
                                  : AppColors.whiteColor), // red as border color
                        ),
                        child: Center(
                            child: Text(
                              data['button-one'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'Poppins Regular',
                                  color: !data['isDark']
                                      ? AppColors.whiteColor
                                      : AppColors.appTertiaryColor),
                            )),
                      ),
                      SizedBox(
                        width: DeviceUtils.getScaledWidth(context, scale: 0.02),
                      ),
                      Container(
                        width: 66,
                        height: 25,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(3)),
                          border: Border.all(
                              color: data['isDark']
                                  ? AppColors.appSecondaryColor
                                  : AppColors
                                  .appPrimaryColor), // red as border color
                        ),
                        child: Center(
                            child: Text(
                              data['button-two'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'Poppins Regular',
                                  color: data['isDark']
                                      ? AppColors.appSecondaryColor
                                      : AppColors.appPrimaryColor),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Icon(
              Icons.close,
              color: data['isDark']
                  ? AppColors.appSecondaryColor
                  : AppColors.appPrimaryColor,
              size: 20,
            )
          ],
        ));
  }
}

//
// Widget NotificationCard(context, data) {
//   return Container(
//       width: DeviceUtils.getScaledWidth(context, scale: 0.9),
//       padding: EdgeInsets.symmetric(
//           vertical: DeviceUtils.getScaledHeight(context, scale: 0.02),
//           horizontal: DeviceUtils.getScaledWidth(context, scale: 0.04)),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5), // radius of 10
//           color: !data['isDark']
//               ? AppColors.appSecondaryColor
//               : AppColors.appPrimaryColor),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       data['title'],
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           fontSize: 16,
//                           fontFamily: 'Poppins Regular',
//                           color: data['isDark']
//                               ? AppColors.appSecondaryColor
//                               : AppColors.appTertiaryColor),
//                     ),
//                     SizedBox(
//                       width: DeviceUtils.getScaledWidth(context, scale: 0.02),
//                     ),
//                     Image.asset(
//                       data['image'],
//                       width: DeviceUtils.getScaledWidth(context, scale: (0.05)),
//                       height: 20,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: DeviceUtils.getScaledHeight(context, scale: 0.01),
//                 ),
//                 SizedBox(
//                   width: DeviceUtils.getScaledWidth(context, scale: 0.75),
//                   child: Text(
//                     data['description'],
//                     textAlign: TextAlign.left,
//                     style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 12,
//                         fontFamily: 'Poppins Regular',
//                         color: data['isDark']
//                             ? AppColors.appSecondaryColor
//                             : AppColors.appPrimaryColor),
//                   ),
//                 ),
//                 SizedBox(
//                   height: DeviceUtils.getScaledHeight(context, scale: 0.02),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       width: 80,
//                       height: 25,
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       decoration: BoxDecoration(
//                         color: !data['isDark']
//                             ? AppColors.appPrimaryColor
//                             : AppColors.whiteColor,
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(3)),
//                         border: Border.all(
//                             color: data['isDark']
//                                 ? AppColors.appPrimaryColor
//                                 : AppColors.whiteColor), // red as border color
//                       ),
//                       child: Center(
//                           child: Text(
//                         data['button-one'],
//                         style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 12,
//                             fontFamily: 'Poppins Regular',
//                             color: !data['isDark']
//                                 ? AppColors.whiteColor
//                                 : AppColors.appTertiaryColor),
//                       )),
//                     ),
//                     SizedBox(
//                       width: DeviceUtils.getScaledWidth(context, scale: 0.02),
//                     ),
//                     Container(
//                       width: 66,
//                       height: 25,
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(3)),
//                         border: Border.all(
//                             color: data['isDark']
//                                 ? AppColors.appSecondaryColor
//                                 : AppColors
//                                     .appPrimaryColor), // red as border color
//                       ),
//                       child: Center(
//                           child: Text(
//                         data['button-two'],
//                         style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 12,
//                             fontFamily: 'Poppins Regular',
//                             color: data['isDark']
//                                 ? AppColors.appSecondaryColor
//                                 : AppColors.appPrimaryColor),
//                       )),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Icon(
//             Icons.close,
//             color: data['isDark']
//                 ? AppColors.appSecondaryColor
//                 : AppColors.appPrimaryColor,
//             size: 20,
//           )
//         ],
//       ));
// }
