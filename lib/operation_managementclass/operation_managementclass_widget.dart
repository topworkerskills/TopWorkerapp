import '/auth/base_auth_user_provider.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/pre_joining_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'operation_managementclass_model.dart';
export 'operation_managementclass_model.dart';

class OperationManagementclassWidget extends StatefulWidget {
  const OperationManagementclassWidget({
    super.key,
    bool? videoMeet,
    this.appId,
    this.channelName,
    this.token,
    bool? isMicEnabled,
    bool? isVideoEnabled,
  })  : videoMeet = videoMeet ?? false,
        isMicEnabled = isMicEnabled ?? false,
        isVideoEnabled = isVideoEnabled ?? false;

  final bool videoMeet;
  final String? appId;
  final String? channelName;
  final String? token;
  final bool isMicEnabled;
  final bool isVideoEnabled;

  @override
  State<OperationManagementclassWidget> createState() =>
      _OperationManagementclassWidgetState();
}

class _OperationManagementclassWidgetState
    extends State<OperationManagementclassWidget> {
  late OperationManagementclassModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OperationManagementclassModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.videoMeet = widget.videoMeet;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32.0,
          ),
        ),
        title: Text(
          'Class Details',
          style: FlutterFlowTheme.of(context).headlineMedium,
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.videoMeet)
                  SizedBox(
                    width: 400.0,
                    height: 300.0,
                    child: custom_widgets.VideoCall(
                      width: 400.0,
                      height: 300.0,
                      appId: widget.appId!,
                      channelName: widget.channelName!,
                      tempToken: widget.token!,
                    ),
                  ),
                if (widget.videoMeet == false)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1579389083078-4e7018379f7e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxvcGVyYXRpb24lMjBtYW5hZ2VtZW50fGVufDB8fHx8MTcwNzA1NDkyOHww&ixlib=rb-4.0.3&q=80&w=1080',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 230.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to the World of understanding Properly your Stream with TopWorker\'s excellent Training Sessions to achieve success in your career, with excellent opportunities at your doorstep with our modules of Personalized skill development and knowledge enhhancement classes.',
                        style: FlutterFlowTheme.of(context).labelLarge,
                      ),
                      Divider(
                        height: 32.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          '45 Min Virtual Meeting',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Builder(
                    builder: (context) => Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 24.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (loggedIn) {
                            try {
                              final result =
                                  await FirebaseFunctions.instanceFor(
                                          region: 'asia-south1')
                                      .httpsCallable('generateToken')
                                      .call({
                                "channelName": 'TopWorker Skills Development',
                              });
                              _model.cloudToken =
                                  GenerateTokenCloudFunctionCallResponse(
                                data: result.data,
                                succeeded: true,
                                resultAsString: result.data.toString(),
                                jsonBody: result.data,
                              );
                            } on FirebaseFunctionsException catch (error) {
                              _model.cloudToken =
                                  GenerateTokenCloudFunctionCallResponse(
                                errorCode: error.code,
                                succeeded: false,
                              );
                            }

                            if (!_model.cloudToken!.succeeded!) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Token Genrated Successfully',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: SizedBox(
                                      height: 200.0,
                                      width: 200.0,
                                      child: PreJoiningDialogWidget(
                                        token: _model.cloudToken!.data!,
                                        channelName:
                                            'TopWorker Skills Development',
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'You are not a Authorized User',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }

                          setState(() {});
                        },
                        text: 'Reserve Spot',
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Sora',
                                color: Colors.white,
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
