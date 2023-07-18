import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_time/Modules/More_Screen/widgets/Profile_info.dart';
import 'package:on_time/Modules/More_Screen/widgets/line.dart';
import 'package:on_time/Modules/More_Screen/widgets/list_settings.dart';
import 'package:on_time/Modules/More_Screen/widgets/person_info.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'Profile Info',
      'Language',
      'Setting',
      'FAQ',
      'Help & Support',
      'Log out',
    ];
    List<IconData> icons = [
      Icons.person_outline_outlined,
      Icons.language,
      Icons.settings,
      Icons.question_answer,
      Icons.live_help_outlined,
      Icons.logout
    ];
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0,left: 24,right: 24,),
        child: ListView(
          children: [
            const ProfileInfo(),
            Padding(padding: const EdgeInsets.symmetric(vertical: 24),
            child: Container(
              width: MediaQuery.sizeOf(context).width.w,
              height: 97.h,
              decoration: ShapeDecoration(
                color: const Color(0x19034488),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PersonInfo(
                    text: 'Attendance',
                    count: '25',
                  ),
                  DetailsCubit().buildSizedBoxWidth(16),
                  const Line(),
                  DetailsCubit().buildSizedBoxWidth(16),
                  const PersonInfo(
                    text: 'Time Off',
                    count: '02',
                  ),
                  DetailsCubit().buildSizedBoxWidth(16),
                  const Line(),
                  DetailsCubit().buildSizedBoxWidth(16),
                  const PersonInfo(
                    text: 'Tasks',
                    count: '05',
                  ),
                ],
              ),
            )
            ),
             SizedBox(
             height: MediaQuery.sizeOf(context).height * 0.36.h,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (context , index) {
                 return const Divider();
                },
                itemBuilder: (context , index) {
                  return  ListSettings(title: titles[index], icons: icons[index]);
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}






