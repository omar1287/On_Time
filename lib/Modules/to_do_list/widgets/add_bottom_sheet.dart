
import 'package:flutter/material.dart';
import 'package:on_time/Modules/to_do_list/widgets/show_bottom_sheet.dart';

import '../../../core/utils/app_styles.dart';


class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({
    super.key,
  });

  // late AnimationController _animationController;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 56,
      decoration: ShapeDecoration(
        color: const Color(0xFF034488),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
      ),
      child: TextButton(
          onPressed: () {
      // showModalBottomSheet(
      //   context: context,
      //   builder: (context) {
      //     return BottomSheet(
      //       animationController: _animationController,
      //       onClosing: () {
      //         _animationController.reverse();
      //       },
      //       builder: (context) {
      //         return ShowBottomSheet();
      //       },
      //     );
      //   },
      // );
      // _animationController.forward();
            showBottomSheet(context: context, builder: (context) =>
            const ShowBottomSheet()
            );
          },
          child: Text(
            'ADD +',
            style: AppStyles.textStyle13
                .copyWith(color: const Color(0xffffffff)),
          )),
    );
  }
}