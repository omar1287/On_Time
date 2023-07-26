import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:on_time/Modules/Chat_Screen/individual_call.dart';
import 'package:on_time/Modules/Chat_Screen/widgets/appbar.dart';
import 'package:on_time/Modules/Chat_Screen/widgets/build_message.dart';
import 'package:on_time/Modules/Chat_Screen/widgets/build_message_from_user.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';

import '../../core/utils/app_styles.dart';

class ChatIndividual extends StatefulWidget {
  const ChatIndividual({Key? key}) : super(key: key);

  @override
  State<ChatIndividual> createState() => _ChatIndividualState();
}

class _ChatIndividualState extends State<ChatIndividual> {
  @override
  void initState() {
    super.initState();
  }
  late RtcEngine agoraEngine;
  String channelName = "test";
  String token = "token";
  String appId = "4a20a6f8b06a4eb6a15de1a9e0027e08";
  int uid = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Mostafa', 'Online',(){
        join();
      }),
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
          SizedBox(
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
  void  join() async {

    // Set channel options including the client role and channel profile
    ChannelMediaOptions options = const ChannelMediaOptions(
      clientRoleType: ClientRoleType.clientRoleBroadcaster,
      channelProfile: ChannelProfileType.channelProfileCommunication,
    );

    await agoraEngine.joinChannel(
      token: token,
      channelId: channelName,
      options: options,
      uid: uid,
    );
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (context) => const IndividualCall()));
  }
}


