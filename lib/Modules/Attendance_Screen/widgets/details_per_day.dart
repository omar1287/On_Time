import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_styles.dart';

class DetailsPerDay extends StatelessWidget {
  const DetailsPerDay({
    super.key, required this.text, required this.color,
  });
  final String text;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child
          : Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.4,
            margin: const EdgeInsets.symmetric(horizontal: 8,
            vertical: 8),
            child:  Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '07\n',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'Sun',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.start,
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          '09:00 AM - 06:00PM',
                          style: AppStyles.textStyle13,
                        ),
                      ),
                    ),
                    Container(
                      width: 81.w,
                      height: 23.62.h,
                      decoration: ShapeDecoration(
                        color:  Color(color),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      ),
                      child:  Text(
                        text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -5,
            right: -5,
            child: Container(
              width: 49.50,
              height: 49.50,
              alignment: Alignment.center,
              decoration: const ShapeDecoration(
                color: Color(0xFF034488),
                shape: OvalBorder(),
              ),
              child: Text(
                '10\nHrs',
                style: AppStyles.textStyle16.copyWith(
                    color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}