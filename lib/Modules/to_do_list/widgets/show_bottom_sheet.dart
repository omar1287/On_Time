import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../../Task_Screen/details_screen/manager/details_cubit.dart';
import 'calendar_field.dart';
import 'custom_text_field.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 45),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Create New Mission',
              style: AppStyles.textStyle16
            ),
            DetailsCubit().buildSizedBox(24),
            const Text(
              'Name',
              style: AppStyles.textStyle14,
            ),
            DetailsCubit().buildSizedBox(4),
            const CustomTextField(
              hint: 'Mission Name',
            ),
            DetailsCubit().buildSizedBox(24),
            const Text(
              'Description',
              style: AppStyles.textStyle14,
            ),
            DetailsCubit().buildSizedBox(4),
            const CustomTextField(
              hint: 'Mission Description',
              maxLines: 4,
            ),
            DetailsCubit().buildSizedBox(24),
            const CalendarField(
              title: 'Date',
              hintDate: 'Choose Date',
            ),
            DetailsCubit().buildSizedBox(24),
            Row(
              children: [
                const Expanded(
                  child: CalendarField(
                    title: 'Start',
                    hintDate: 'Start Mission Time',
                  ),
                ),
                DetailsCubit().buildSizedBoxWidth(16),
                const Expanded(
                    child: CalendarField(
                  title: 'DeadLine',
                  hintDate: 'End Mission Time',
                )),
              ],
            ),
            DetailsCubit().buildSizedBox(24),
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                  textColor: Colors.white,
                  height: 55,
                  color: const Color(0xFF034488),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'.toUpperCase()),
                )),
                DetailsCubit().buildSizedBoxWidth(16),
                Expanded(
                    child: MaterialButton(
                  textColor: Colors.white,
                  height: 55,
                  color: const Color(0xFF034488),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Confirm'.toUpperCase()),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
