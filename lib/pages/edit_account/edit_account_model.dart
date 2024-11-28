import '/flutter_flow/flutter_flow_util.dart';
import 'edit_account_widget.dart' show EditAccountWidget;
import 'package:flutter/material.dart';

class EditAccountModel extends FlutterFlowModel<EditAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for Passwordform widget.
  FocusNode? passwordformFocusNode;
  TextEditingController? passwordformTextController;
  late bool passwordformVisibility;
  String? Function(BuildContext, String?)? passwordformTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordformVisibility = false;
  }

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    passwordformFocusNode?.dispose();
    passwordformTextController?.dispose();
  }
}
