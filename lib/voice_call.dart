import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';

import 'Modules/Task_Screen/details_screen/manager/details_cubit.dart';
import 'core/utils/app_styles.dart';

const String appId = "4a20a6f8b06a4eb6a15de1a9e0027e08";

class VoiceCall extends StatefulWidget {
  const VoiceCall({Key? key}) : super(key: key);

  @override
  _VoiceCallState createState() => _VoiceCallState();
}

class _VoiceCallState extends State<VoiceCall> {
  String channelName = "test";
  String token = "token";

  @override
  void initState() {
    super.initState();
    // Set up an instance of Agora engine
    setupVoiceSDKEngine();
  }

  @override
  void dispose() async {
    await agoraEngine.leaveChannel();
    super.dispose();
  }
  int uid = 0; // uid of the local user

  int? _remoteUid; // uid of the remote user
  Future<void> setupVoiceSDKEngine() async {
    // retrieve or request microphone permission
    await [Permission.microphone].request();

    //create an instance of the Agora engine
    agoraEngine = createAgoraRtcEngine();
    await agoraEngine.initialize(const RtcEngineContext(
        appId: appId
    ));

    // Register the event handler
    agoraEngine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          showMessage("Local user uid:${connection.localUid} joined the channel");
          setState(() {
            _isJoined = true;
          });
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          showMessage("Remote user uid:$remoteUid joined the channel");
          setState(() {
            _remoteUid = remoteUid;
          });
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          showMessage("Remote user uid:$remoteUid left the channel");
          setState(() {
            _remoteUid = null;
          });
        },
      ),
    );
  }
  bool _isJoined = false; // Indicates if the local user has joined the channel
  late RtcEngine agoraEngine; // Agora engine instance

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey
  = GlobalKey<ScaffoldMessengerState>(); // Global key to access the scaffold

  showMessage(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }


  // Build UI
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
            MaterialButton(
              onPressed: (){
                leave();
              },
              child: Image.asset(
                  'Assets/Images/end_call.png'
              ),
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

  Widget _status(){
    String statusText;

    if (!_isJoined) {
      statusText = 'Join a channel';
    } else if (_remoteUid == null) {
      statusText = 'Waiting for a remote user to join...';
    } else {
      statusText = 'Connected to remote user, uid:$_remoteUid';
    }

    return Text(
      statusText,
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
  }

  void leave() {
    setState(() {
      _isJoined = false;
      _remoteUid = null;
    });
    agoraEngine.leaveChannel();
    Navigator.pop(context);
  }

}
