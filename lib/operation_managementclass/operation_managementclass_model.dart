import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'operation_managementclass_widget.dart'
    show OperationManagementclassWidget;
import 'package:flutter/material.dart';

class OperationManagementclassModel
    extends FlutterFlowModel<OperationManagementclassWidget> {
  ///  Local state fields for this page.

  bool isCreatingChannel = false;

  bool videoMeet = false;

  String? appId;

  String? token;

  bool isMicEnabled = false;

  bool isVideoEnabled = false;

  String? channelName = 'TopWorker Skills Development';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Cloud Function - generateToken] action in ButtonPrimary widget.
  GenerateTokenCloudFunctionCallResponse? cloudToken;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
