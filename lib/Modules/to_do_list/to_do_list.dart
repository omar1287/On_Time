import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';
import 'package:on_time/Modules/to_do_list/widgets/add_bottom_sheet.dart';
import 'package:on_time/Modules/to_do_list/widgets/task_per_day.dart';
import 'package:on_time/core/utils/app_styles.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
            children: [
          const Text(
            'Sun 08 June',
            style: AppStyles.textStyle16,
          ),
          DetailsCubit().buildSizedBox(8),
          const Text('You have 03 Tasks today', style: AppStyles.textStyle12),
          DetailsCubit().buildSizedBox(16),
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
            locale: 'en_ISO',
          ),
          DetailsCubit().buildSizedBox(24),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.5,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) =>
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        '09:00 AM',
                        style: AppStyles.textStyle12,
                      ),
                    ),
                    TaskPerDay()
                  ],
                )
            ),
          ),
          const AddBottomSheet(),
        ],
        ),
      ),
    );
  }
}

