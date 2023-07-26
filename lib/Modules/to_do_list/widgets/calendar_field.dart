import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../../Task_Screen/details_screen/manager/details_cubit.dart';

class CalendarField extends StatelessWidget {
  const CalendarField({
    super.key, required this.title, required this.hintDate,
  });
  final String title, hintDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,style: AppStyles.textStyle14,
        ),
        DetailsCubit().buildSizedBox(8),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.45,
          child: TextFormField(
            decoration:  InputDecoration(
                fillColor: const Color(0xFFF6F6F6),
                filled: true,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    )
                ),
                hintText: hintDate,
                hintStyle: AppStyles.textStyle14,
                suffixIcon: const Icon(
                    Icons.date_range
                )
            ),
          ),
        ),
      ],
    );
  }
}