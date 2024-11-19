import '/flutter_flow/flutter_flow_util.dart';
import 'calificacion_servicio_widget.dart' show CalificacionServicioWidget;
import 'package:flutter/material.dart';

class CalificacionServicioModel
    extends FlutterFlowModel<CalificacionServicioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
