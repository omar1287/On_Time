import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/utils/app_styles.dart';
import '../individual_call.dart';

AppBar buildAppBar(BuildContext context,String title, String subTitle) {
  return AppBar(
    backgroundColor: HexColor('#034488'),
    elevation: 0,
    title: ListTile(
      title: Text(
        title,
        style: AppStyles.textStyle16.copyWith(color: Colors.white),
      ),
      subtitle: Text(
        subTitle,
        style: AppStyles.textStyle12.copyWith(color: Colors.white),
      ),
      leading: Image.asset('Assets/Images/Woman.png',width: 35,height: 35,),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: IconButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const IndividualCall()));
          },
          icon: const Icon(
            Icons.phone,
            color: Colors.white,
          ),
        ),),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.video_camera_back_sharp,
          color: Colors.white,
        ),),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert,
          color: Colors.white,
        ),),
    ],
  );
}