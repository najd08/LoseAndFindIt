import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'report_form_widget.dart' show ReportFormWidget;
import 'package:flutter/material.dart';

class ReportFormModel extends FlutterFlowModel<ReportFormWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ItemName widget.
  FocusNode? itemNameFocusNode1;
  TextEditingController? itemNameTextController1;
  String? Function(BuildContext, String?)? itemNameTextController1Validator;
  // State field(s) for ItemName widget.
  FocusNode? itemNameFocusNode2;
  TextEditingController? itemNameTextController2;
  String? Function(BuildContext, String?)? itemNameTextController2Validator;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemNameFocusNode1?.dispose();
    itemNameTextController1?.dispose();

    itemNameFocusNode2?.dispose();
    itemNameTextController2?.dispose();
  }
}
