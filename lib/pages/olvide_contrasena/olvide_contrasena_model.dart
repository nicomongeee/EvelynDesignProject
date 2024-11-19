import '/flutter_flow/flutter_flow_util.dart';
import 'olvide_contrasena_widget.dart' show OlvideContrasenaWidget;
import 'package:flutter/material.dart';

class OlvideContrasenaModel extends FlutterFlowModel<OlvideContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
