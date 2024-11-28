import '/flutter_flow/flutter_flow_util.dart';
import '/pages/senders/senders_widget.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Senders component.
  late SendersModel sendersModel;

  @override
  void initState(BuildContext context) {
    sendersModel = createModel(context, () => SendersModel());
  }

  @override
  void dispose() {
    sendersModel.dispose();
  }
}
