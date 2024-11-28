import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for email_up widget.
  FocusNode? emailUpFocusNode;
  TextEditingController? emailUpTextController;
  String? Function(BuildContext, String?)? emailUpTextControllerValidator;
  // State field(s) for password_up widget.
  FocusNode? passwordUpFocusNode;
  TextEditingController? passwordUpTextController;
  late bool passwordUpVisibility;
  String? Function(BuildContext, String?)? passwordUpTextControllerValidator;
  // State field(s) for phone_num_up widget.
  FocusNode? phoneNumUpFocusNode;
  TextEditingController? phoneNumUpTextController;
  String? Function(BuildContext, String?)? phoneNumUpTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordUpVisibility = false;
  }

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    emailUpFocusNode?.dispose();
    emailUpTextController?.dispose();

    passwordUpFocusNode?.dispose();
    passwordUpTextController?.dispose();

    phoneNumUpFocusNode?.dispose();
    phoneNumUpTextController?.dispose();
  }
}
