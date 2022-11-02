import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/theme/app_colors.dart';

import '../../../util/device_utils.dart';

Widget TripCard(context, data) {
  return Container(
      width: DeviceUtils.getScaledWidth(context, scale: 0.9),
      height: 140,
      padding: EdgeInsets.symmetric(
          vertical: DeviceUtils.getScaledHeight(context, scale: 0.02),
          horizontal: DeviceUtils.getScaledWidth(context, scale: 0.03)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), // radius of 10
        color: AppColors.appPrimaryColor,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            data['image'],
            width: DeviceUtils.getScaledWidth(context, scale: (0.25)),
            height: 140,
          ),
          SizedBox(
            width: DeviceUtils.getScaledWidth(context, scale: 0.05),
          ),

          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               data['country'],
               style: const TextStyle(
                 fontWeight: FontWeight.w400,
                 fontSize: 16,
                 fontFamily: 'Poppins Regular',
                 color: AppColors.whiteColor,
               ),
             ),
             SizedBox(
               height: DeviceUtils.getScaledHeight(context, scale: 0.005),
             ),
             Expanded(
               child: SizedBox(
                 width: DeviceUtils.getScaledWidth(context, scale: 0.35),
                 child:
                 ListView.builder(
                     itemCount: data['features'].length,
                     padding: EdgeInsets.zero,
                     itemBuilder: (context, i){
                       return  Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Transform.translate(
                             offset: const Offset(0, 3),
                             child: const Text(
                               '•',
                               style:
                               TextStyle(fontSize: 10, color: AppColors.whiteColor),
                             ),
                           ),
                           SizedBox(
                               width: DeviceUtils.getScaledWidth(context, scale: 0.01)),
                           Flexible(
                             child: Text(
                               data['features'][i],
                               overflow: TextOverflow.ellipsis,
                               style: const TextStyle(
                                 fontWeight: FontWeight.w400,
                                 fontSize: 12,
                                 fontFamily: 'Poppins Regular',
                                 color: AppColors.whiteColor,
                               ),
                             ),
                           ),
                         ],
                       );
                     }
                 ),
               ),
             )
           ],
            ),

          SizedBox(
            width: DeviceUtils.getScaledWidth(context, scale: 0.03),
          ),
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Align(
                  alignment: Alignment.topRight,
                  child: (data['isLiked'] == false) ? const Icon(
                      Icons.favorite_border_outlined, size: 30,
                    color: AppColors.whiteColor,) : const Icon(
                     Icons.favorite,
                    size: 30,
                    color: AppColors.whiteColor,
                  )),
               Container(
                 width: DeviceUtils.getScaledWidth(context, scale: 0.16),
                 child: Text(
                   data['status'],
                   overflow: TextOverflow.ellipsis,
                   maxLines: 1,
                   textAlign: TextAlign.left,
                   style: const TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 8,
                     fontFamily: 'Poppins Regular',
                     color: AppColors.whiteColor,
                   ),
                 ),
               ),
             ],
           )
        ],
      ));
}
