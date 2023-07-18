import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/widgets/colored_text.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/widgets/member_of_group.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/widgets/select_date.dart';
import 'package:on_time/core/utils/app_styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DetailsTask extends StatelessWidget {
  const DetailsTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              children: [
                ColoredText(color: 0xFFFFAC33,
                text: 'Design',),
                SizedBox(width: 8,),
                ColoredText(color: 0xFFD80027, text: 'High',),
              ],
            ),
            buildSizedBox(16),
            const Text(
              'Landing Page',
              style: AppStyles.textStyle16,
            ),
            buildSizedBox(8),
            const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: AppStyles.textStyle12
            ),
            buildSizedBox(24),
            const Text(
              'Progress',
              style: AppStyles.textStyle16,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: LinearPercentIndicator(
                width: MediaQuery.sizeOf(context).width * 0.7,
                animation: true,
                animationDuration: 1000,
                lineHeight: 16.0,
                percent: 0.8,
                trailing: const Text("80.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: const Color(0xFF034488),
                barRadius: const Radius.circular(15),
              ),
            ),
            buildSizedBox(24),
            const Text(
              'Members',
              style: AppStyles.textStyle16,
            ),
            buildSizedBox(8),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Member(
                    imagePath: 'Assets/Images/Man.png',
                    name: 'Mohamed',
                  ),
                  buildSizedBoxWidth(15),
                  const Member(
                    imagePath: 'Assets/Images/Man.png',
                    name: 'Hagar',
                  ),
                  buildSizedBoxWidth(15),
                  const Member(
                    imagePath: 'Assets/Images/Man.png',
                    name: 'Mostafa',
                  ),
                  buildSizedBoxWidth(15),
                  const Member(
                    imagePath: 'Assets/Images/Man.png',
                    name: 'Mai',
                  ),
                ],
              ),
            ),
            buildSizedBox(24),
            Row(
              children: [
                const SelectDate(title: 'Start', date: 'Sat, june17, 2023'),
                buildSizedBoxWidth(16),
                const SelectDate(title: 'DeadLine', date: 'Sat, june17, 2023'),
              ],
            ),
            DetailsCubit().buildSizedBox(24),
            const Text(
              'Assigned By',
              style: AppStyles.textStyle16,
            ),
             ListTile(
              title: Text(
                'Name Manager',
                style: AppStyles.textStyle12.copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: const Text(
                'Position',
                style: AppStyles.textStyle12,
              ),
              leading: Image.asset('Assets/Images/Man.png'
                  ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox(double height) =>  SizedBox(height: height.h,);
  SizedBox buildSizedBoxWidth(double width) =>  SizedBox(width: width.w,);
}


