import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'report_form_copy_widget.dart' show ReportFormCopyWidget;
import 'package:flutter/material.dart';

class ReportFormCopyModel extends FlutterFlowModel<ReportFormCopyWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ItemName widget.
  FocusNode? itemNameFocusNode1;
  TextEditingController? itemNameTextController1;
  String? Function(BuildContext, String?)? itemNameTextController1Validator;
  // State field(s) for stateChoice widget.
  FormFieldController<List<String>>? stateChoiceValueController;
  String? get stateChoiceValue =>
      stateChoiceValueController?.value?.firstOrNull;
  set stateChoiceValue(String? val) =>
      stateChoiceValueController?.value = val != null ? [val] : [];
  // State field(s) for ItemName widget.
  FocusNode? itemNameFocusNode2;
  TextEditingController? itemNameTextController2;
  String? Function(BuildContext, String?)? itemNameTextController2Validator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

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
