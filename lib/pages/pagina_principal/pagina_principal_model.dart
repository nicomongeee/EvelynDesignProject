import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_principal_widget.dart' show PaginaPrincipalWidget;
import 'package:flutter/material.dart';

class PaginaPrincipalModel extends FlutterFlowModel<PaginaPrincipalWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabTienda widget.
  TabController? tabTiendaController;
  int get tabTiendaCurrentIndex =>
      tabTiendaController != null ? tabTiendaController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabTiendaController?.dispose();
  }
}
