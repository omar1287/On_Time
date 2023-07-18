import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_styles.dart';

class Member extends StatelessWidget {
  const Member({
    super.key, required this.name, required this.imagePath,
  });
  final String name, imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40.w,
          height: 40.w,
          decoration:  ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
            shape: const OvalBorder(
              side: BorderSide(width: 0.50, color: Colors.white),
            ),
          ),
        ),
        Text(
          name,
          style: AppStyles.textStyle16,
        ),
      ],
    );
  }
}