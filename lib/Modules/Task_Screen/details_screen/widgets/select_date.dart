import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';

import '../../../../core/utils/app_styles.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({Key? key, required this.title, required this.date}) : super(key: key);

  final String title, date;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.textStyle16,
          ),
          DetailsCubit().buildSizedBox(8),
          Container(
            width: 175.w,
            height: 45.h,
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(width: 0.50,color: Color(0x66034488))
                )
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Text(
                date,
                textAlign: TextAlign.center,
                style: AppStyles.textStyle13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
