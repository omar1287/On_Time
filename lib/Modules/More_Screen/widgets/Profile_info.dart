import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_styles.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Card(
              child: Container(
                width: MediaQuery.sizeOf(context).width.w,
                decoration: ShapeDecoration(
                  color: const Color(0x19034488),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80.0,bottom: 16),
                      child: Text(
                          'Omar Mohamed',
                          style: AppStyles.textStyle22
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                          'UI/UX Designer | Joined 2022 | Trainer',
                          style: AppStyles.textStyle15
                      ),
                    )
                  ],
                ),
              )
          ),
        ),
        Positioned(
            left: MediaQuery.sizeOf(context).width * 0.30,
            top: 15,
            child: CircleAvatar(
              radius: 60,
              child: Image.asset('Assets/Images/Man.png'),
            )
        )
      ],
    );
  }
}