import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/header/header_widget.dart';
import '/pages/ifound/ifound_widget.dart';
import '/pages/ilost_report/ilost_report_widget.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for Search widget.
  final searchKey = GlobalKey();
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? searchSelectedOption;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  List<PostsRecord> simpleSearchResults = [];
  // Model for IlostReport component.
  late IlostReportModel ilostReportModel;
  // Model for Ifound component.
  late IfoundModel ifoundModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    ilostReportModel = createModel(context, () => IlostReportModel());
    ifoundModel = createModel(context, () => IfoundModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    searchFocusNode?.dispose();

    ilostReportModel.dispose();
    ifoundModel.dispose();
  }
}
