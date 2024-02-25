import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'pre_joining_dialog_model.dart';
export 'pre_joining_dialog_model.dart';

class PreJoiningDialogWidget extends StatefulWidget {
  const PreJoiningDialogWidget({
    super.key,
    required this.token,
    String? channelName,
  }) : channelName = channelName ?? 'TopWorker Skills Development';

  final String? token;
  final String channelName;

  @override
  State<PreJoiningDialogWidget> createState() => _PreJoiningDialogWidgetState();
}

class _PreJoiningDialogWidgetState extends State<PreJoiningDialogWidget> {
  late PreJoiningDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreJoiningDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await requestPermission(microphonePermission);
                    if (await getPermissionStatus(microphonePermission)) {
                      setState(() {
                        _model.isMicEnabled = true;
                      });
                    } else {
                      setState(() {
                        _model.isMicEnabled = false;
                      });
                    }
                  },
                  child: Icon(
                    Icons.mic_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 48.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await requestPermission(cameraPermission);
                      if (await getPermissionStatus(cameraPermission)) {
                        setState(() {
                          _model.isVideoEnabled = true;
                        });
                      } else {
                        setState(() {
                          _model.isVideoEnabled = false;
                        });
                      }
                    },
                    child: Icon(
                      Icons.videocam_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 48.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await actions.joinChannel(
                    context,
                    widget.token,
                    _model.isMicEnabled,
                    _model.isVideoEnabled,
                  );
                },
                text: 'Join',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge,
                  elevation: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
