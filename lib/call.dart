
import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {

  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "4a20a6f8b06a4eb6a15de1a9e0027e08",
      channelName: "test",
      tempToken: 'token',
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );
  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  // Create UI with local view and remote view
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AgoraVideoViewer(client: client),
            AgoraVideoButtons(client: client),
          ],
        ),
      ),
    );
  }

}