import '/flutter_flow/flutter_flow_util.dart';
import '/pages/header/header_widget.dart';
import 'home_your_posts_copy_widget.dart' show HomeYourPostsCopyWidget;
import 'package:flutter/material.dart';

class HomeYourPostsCopyModel extends FlutterFlowModel<HomeYourPostsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }

  /// Action blocks.
  Future delete(BuildContext context) async {}
}
