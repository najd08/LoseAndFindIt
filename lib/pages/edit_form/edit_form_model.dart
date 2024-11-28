import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_form_widget.dart' show EditFormWidget;
import 'package:flutter/material.dart';

class EditFormModel extends FlutterFlowModel<EditFormWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ItemName widget.
  FocusNode? itemNameFocusNode;
  TextEditingController? itemNameTextController;
  String? Function(BuildContext, String?)? itemNameTextControllerValidator;
  // State field(s) for stateChoice widget.
  FormFieldController<List<String>>? stateChoiceValueController;
  String? get stateChoiceValue =>
      stateChoiceValueController?.value?.firstOrNull;
  set stateChoiceValue(String? val) =>
      stateChoiceValueController?.value = val != null ? [val] : [];
  // State field(s) for ItemDetails widget.
  FocusNode? itemDetailsFocusNode;
  TextEditingController? itemDetailsTextController;
  String? Function(BuildContext, String?)? itemDetailsTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for catgory widget.
  int? catgoryValue;
  FormFieldController<int>? catgoryValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemNameFocusNode?.dispose();
    itemNameTextController?.dispose();

    itemDetailsFocusNode?.dispose();
    itemDetailsTextController?.dispose();
  }
}
