import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:on_time/Modules/Attendance_Screen/widgets/attendence_per_day.dart';
import 'package:on_time/Modules/Attendance_Screen/widgets/attendence_per_month.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';

import 'widgets/custom_button.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    bool clicked = false;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Container(
          padding: const EdgeInsets.all(8.0),

          child: ContainedTabBarView(
            tabBarProperties: TabBarProperties(
              width: MediaQuery.sizeOf(context).width * 0.6,
              height: 43,

              position: TabBarPosition.top,
              alignment: TabBarAlignment.center,
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[400],
            ),
            tabs: const [
              CustomButton(
                text: 'Week',
              ),
              CustomButton(
                text: 'Month',
              )
            ],
            views: [
             Column(
               children: [
                 DetailsCubit().buildSizedBox(16),
                     const AttendencePerDay(),
                     DetailsCubit().buildSizedBox(16),
               ],
             ) ,
              ListView(
                children: [
                  DetailsCubit().buildSizedBox(16),
                  const AttendencePerMonth(),
                  DetailsCubit().buildSizedBox(16),
                ],
              ) ,
            ],
            onChange: (index) {
              setState(() {
                clicked = true;
              });
            },
          ),
        ),
      ),
    );
  }
}


