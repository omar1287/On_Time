import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../../Task_Screen/details_screen/manager/details_cubit.dart';

class BuildMessageFromUser extends StatelessWidget {
  const BuildMessageFromUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        DetailsCubit().buildSizedBoxWidth(16),
        Expanded(child:
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFFF7F7F7),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Mike Mazowski ',
                  style: AppStyles.textStyle12.copyWith(
                      color: const Color(0xFFF2994A),
                      fontWeight: FontWeight.w700
                  )
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 242,
                height: 106,
                child:  Stack(
                  children: [
                    const Positioned(
                      left: 210,
                      top: 90,
                      child: Text(
                          '16.04',
                          style: AppStyles.textStyle12
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 234, // maximum width of the container
                        ),
                        child: const Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text.',
                            style: AppStyles.textStyle12
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ))
      ],
    );
  }
}