import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'call_action_buttons_model.dart';
export 'call_action_buttons_model.dart';

class CallActionButtonsWidget extends StatefulWidget {
  const CallActionButtonsWidget({super.key});

  @override
  State<CallActionButtonsWidget> createState() =>
      _CallActionButtonsWidgetState();
}

class _CallActionButtonsWidgetState extends State<CallActionButtonsWidget> {
  late CallActionButtonsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CallActionButtonsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlutterFlowIconButton(
          buttonSize: 50.0,
          fillColor: FlutterFlowTheme.of(context).primary,
          icon: const Icon(
            Icons.mic,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        FlutterFlowIconButton(
          buttonSize: 50.0,
          fillColor: FlutterFlowTheme.of(context).primary,
          icon: const Icon(
            Icons.videocam,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        FlutterFlowIconButton(
          buttonSize: 50.0,
          fillColor: FlutterFlowTheme.of(context).primary,
          icon: const Icon(
            Icons.call_end,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
      ],
    );
  }
}
