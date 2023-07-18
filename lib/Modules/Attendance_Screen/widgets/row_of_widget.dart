import 'package:flutter/material.dart';

import '../../Task_Screen/details_screen/manager/details_cubit.dart';

class RowOfWidget extends StatelessWidget {
  const RowOfWidget({Key? key, required this.title, required this.color}) : super(key: key);

  final String title;
  final int color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration:  ShapeDecoration(
            color: Color(color),
            shape: const OvalBorder(),
          ),
        ),
        DetailsCubit().buildSizedBoxWidth(4),
         Text(
          title,
          style: TextStyle(
            color: Color(color),
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
