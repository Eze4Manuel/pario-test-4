

import 'package:flutter/material.dart';
import 'package:pario_task_4/app/ui/screens/trips/widgets.dart';

import '../../../util/device_utils.dart';
import '../../theme/app_colors.dart';
import 'data.dart';

class Trips extends StatefulWidget {
  const Trips({Key? key}) : super(key: key);

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: DeviceUtils.getScaledHeight(context, scale: 0.05),
            horizontal: DeviceUtils.getScaledWidth(context, scale: 0.05)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              const Text(
                'Saved Trip Plans',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  fontFamily: 'Poppins Regular',
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.05),
              ),
              TripCard(context, saved_trip_data[0] ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.05),
              ),
              TripCard(context, saved_trip_data[1] ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.05),
              ),
              TripCard(context, saved_trip_data[2] )
            ],
          ),
        ),
      ),
    );
  }
}
