import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../../Task_Screen/details_screen/manager/details_cubit.dart';

class TaskPerDay extends StatelessWidget {
  const TaskPerDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Color(0x4C034488), width: 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  'Meeting With Client',
                  style: AppStyles.textStyle13,
                ),
                subtitle: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: AppStyles.textStyle12),
              ),
              DetailsCubit().buildSizedBox(21),
              const Row(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 24,
                  ),
                  Text('Feb 08, 11AM - 03PM',
                      style: AppStyles.textStyle12)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}