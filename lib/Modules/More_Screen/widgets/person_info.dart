import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';
import '../../Task_Screen/details_screen/manager/details_cubit.dart';

class PersonInfo extends StatelessWidget {
  const PersonInfo({
    super.key, required this.text, required this.count,
  });
  final String text, count;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.textStyle16.copyWith(
            letterSpacing: -0.64,
            color: const Color(0xFF747474),
          ),
        ),
        DetailsCubit().buildSizedBox(13),
         Text(
            count,
            style: AppStyles.textStyle22
        )
      ],
    );
  }
}