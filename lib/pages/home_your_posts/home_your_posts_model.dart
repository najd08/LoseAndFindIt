import '/flutter_flow/flutter_flow_util.dart';
import '/pages/header/header_widget.dart';
import '/pages/ilost_report_edit/ilost_report_edit_widget.dart';
import '/pages/navbar/navbar_widget.dart';
import 'home_your_posts_widget.dart' show HomeYourPostsWidget;
import 'package:flutter/material.dart';

class HomeYourPostsModel extends FlutterFlowModel<HomeYourPostsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for IlostReportEdit component.
  late IlostReportEditModel ilostReportEditModel;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    ilostReportEditModel = createModel(context, () => IlostReportEditModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    ilostReportEditModel.dispose();
    navbarModel.dispose();
  }
}
