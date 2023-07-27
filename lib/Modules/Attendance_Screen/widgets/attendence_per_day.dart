import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';

import '../../../core/utils/app_styles.dart';

class AttendencePerDay extends StatelessWidget {
  const AttendencePerDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime(2020, 4, 20),
          firstDate: DateTime(2019, 8, 15),
          lastDate: DateTime.now(),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: Colors.blueGrey,
          dayColor: Colors.grey,
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Colors.blueAccent,
          dotsColor: const Color(0xFF333A47),
          selectableDayPredicate: (date) => date.day != 23,
          locale: 'ar_ISO',
        ),
        DetailsCubit().buildSizedBox(16),
        Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sun 8 June ',
                  style: AppStyles.textStyle16.copyWith(
                      color: Colors.black.withOpacity(0.8)
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Check In',
                    style: AppStyles.textStyle16,
                  ),
                  trailing: Text(
                    '08: 50 AM',
                    style: AppStyles.textStyle14,
                  ),
                  leading: Icon(
                    Icons.input,
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Check Out',
                    style: AppStyles.textStyle16,
                  ),
                  trailing: Text(
                    '08: 50 AM',
                    style: AppStyles.textStyle14,
                  ),
                  leading: Icon(
                    Icons.output,
                  ),
                ),
                // DetailsCubit().buildSizedBox(22),
                const ListTile(
                  title: Text(
                    'Check Out',
                    style: AppStyles.textStyle16,
                  ),
                  trailing: Text(
                    '08: 50 AM',
                    style: AppStyles.textStyle14,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
