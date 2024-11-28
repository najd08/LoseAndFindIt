import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/material.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email_in widget.
  FocusNode? emailInFocusNode;
  TextEditingController? emailInTextController;
  String? Function(BuildContext, String?)? emailInTextControllerValidator;
  // State field(s) for password_in widget.
  FocusNode? passwordInFocusNode;
  TextEditingController? passwordInTextController;
  late bool passwordInVisibility;
  String? Function(BuildContext, String?)? passwordInTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    passwordInVisibility = false;
  }

  @override
  void dispose() {
    emailInFocusNode?.dispose();
    emailInTextController?.dispose();

    passwordInFocusNode?.dispose();
    passwordInTextController?.dispose();
  }
}
