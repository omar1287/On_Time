import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_styles.dart';

class ColoredText extends StatelessWidget {
  const ColoredText({Key? key, required this.color, required this.text}) : super(key: key);

  final int color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59.w,
      height: 22.h,
      decoration: ShapeDecoration(
        color: Color(color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyles.textStyle11
        ),
      ),
    );
  }
}
