import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../../Task_Screen/details_screen/manager/details_cubit.dart';

class BuildMessage extends StatelessWidget {
  const BuildMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF2F80ED),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Container(
                width: 234,
                height: 106,
                child:  Stack(
                  children: [
                    Positioned(
                      left: 210,
                      top: 90,
                      child: Text(
                        '16.04',
                        style: AppStyles.textStyle12.copyWith(
                            color: Colors.white
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 234, // maximum width of the container
                        ),
                        child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text.',
                            style: AppStyles.textStyle12.copyWith(
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        DetailsCubit().buildSizedBoxWidth(16),
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              'Assets/Images/Man.png',
              width: 35,
              height: 35,
            ),
            Positioned(
                left: 25,
                bottom: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF4CE416),
                    shape: OvalBorder(
                      side: BorderSide(
                          width: 1,
                          color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),

      ],
    );
  }
}