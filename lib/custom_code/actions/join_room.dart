// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_functions/cloud_functions.dart';

Future<void> joinRoom() async {
  // Add your function code here!
  final FirebaseFunctions functions =
      FirebaseFunctions.instanceFor(region: 'asia-south1');
  final HttpsCallable generateToken = functions.httpsCallable('generateToken');
  try {
    final response = await generateToken.call(<String, dynamic>{
      'channelName': 'Top Worker Skill Development',
      'expiryTime': 3600
    });
    // Handle response here
    print('Response: $response.data');
  } catch (e) {
    // Handle error
    print('Error: $e');
  }
}
