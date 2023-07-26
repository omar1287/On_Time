import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';
import 'package:on_time/core/utils/app_styles.dart';
class IndividualCall extends StatelessWidget {
  const IndividualCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Assets/Images/Woman.png'),
            DetailsCubit().buildSizedBox(13),
            const Text(
              'Martha Craig',
              textAlign: TextAlign.center,
              style: AppStyles.textStyle24,
            ),
            Text(
              'Contacting…',
              style: AppStyles.textStyle17.copyWith(
                color: Colors.black.withOpacity(0.6000000238418579),
              )
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 30.h),
        width: MediaQuery.of(context).size.width * 0.7.w,
        height: 66,
        decoration: ShapeDecoration(
          color: Colors.black.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'Assets/Images/end_call.png'
            ),
            Image.asset(
                'Assets/Images/message.png'
            ),
            Image.asset(
                'Assets/Images/microphone.png'
            ),
            Image.asset(
                'Assets/Images/sound.png'
            ),
          ],
        ),
      ),
    );
  }
}
