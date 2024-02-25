// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future joinChannel(
  BuildContext context,
  String? token,
  bool? isMicEnabled,
  bool? isVideoEnabled,
) async {
  // Add your function code here!
  final appId = '6a6d67b0ee69478fa3f12a1b81238a7f';
  if (context.mounted) {
    Navigator.of(context).pop();
    // await Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => OperationManagementclass(
    //       appId: appId,
    //       token: token,
    //       channelName: 'TopWorker Skills Development',
    //       isMicEnabled: isMicEnabled,
    //       isVideoEnabled: isVideoEnabled,
    //     ),
    //   ),
    // );
    context.pushNamed(
      'OperationManagementclass',
      queryParameters: {
        'appId': serializeParam(
          appId,
          ParamType.String,
        ),
        'token': serializeParam(
          token,
          ParamType.String,
        ),
        'channelName': serializeParam(
          'TopWorker Skills Development',
          ParamType.String,
        ),
        'isMicEnabled': serializeParam(
          isMicEnabled,
          ParamType.bool,
        ),
        'isVideoEnabled': serializeParam(
          isVideoEnabled,
          ParamType.bool,
        ),
        'videoMeet': serializeParam(
          true,
          ParamType.bool,
        ),
      }.withoutNulls,
    );
  }
}
