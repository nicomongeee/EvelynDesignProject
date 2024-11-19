import '/flutter_flow/flutter_flow_util.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for passReset1 widget.
  FocusNode? passReset1FocusNode;
  TextEditingController? passReset1TextController;
  late bool passReset1Visibility;
  String? Function(BuildContext, String?)? passReset1TextControllerValidator;
  // State field(s) for passReset2 widget.
  FocusNode? passReset2FocusNode;
  TextEditingController? passReset2TextController;
  late bool passReset2Visibility;
  String? Function(BuildContext, String?)? passReset2TextControllerValidator;

  @override
  void initState(BuildContext context) {
    passReset1Visibility = false;
    passReset2Visibility = false;
  }

  @override
  void dispose() {
    passReset1FocusNode?.dispose();
    passReset1TextController?.dispose();

    passReset2FocusNode?.dispose();
    passReset2TextController?.dispose();
  }
}
