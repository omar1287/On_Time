import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:on_time/Modules/Chat_Screen/widgets/appbar.dart';
import 'package:on_time/Modules/Chat_Screen/widgets/build_message.dart';
import 'package:on_time/Modules/Chat_Screen/widgets/build_message_from_user.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';

import '../../core/utils/app_styles.dart';
import '../Notifications/Notifications.dart';
import 'individual_call.dart';

class ChatIndividual extends StatelessWidget {
  const ChatIndividual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Flutter Developer', '4 members'),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            BuildMessageFromUser(),
            BuildMessage(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.emoji_emotions),
          DetailsCubit().buildSizedBoxWidth(16),
          Container(
            width: 222,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Write a message...',
                  hintStyle: AppStyles.textStyle12.copyWith(
                      color: const Color(0xFF1B1A57).withOpacity(0.5)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.50,
                      color: Colors.black.withOpacity(0.10000000149011612),
                    ),
                    borderRadius: BorderRadius.circular(32),
                  )
              ),
            ),
          ),
          DetailsCubit().buildSizedBoxWidth(16),
          const Icon(Icons.loop),
          DetailsCubit().buildSizedBoxWidth(16),
          const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.mic,
              color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
