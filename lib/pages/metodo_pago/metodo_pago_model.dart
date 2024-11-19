import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'metodo_pago_widget.dart' show MetodoPagoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MetodoPagoModel extends FlutterFlowModel<MetodoPagoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombreTarjeta widget.
  FocusNode? txtNombreTarjetaFocusNode;
  TextEditingController? txtNombreTarjetaTextController;
  String? Function(BuildContext, String?)?
      txtNombreTarjetaTextControllerValidator;
  String? _txtNombreTarjetaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for txtNumeroTarjeta widget.
  FocusNode? txtNumeroTarjetaFocusNode;
  TextEditingController? txtNumeroTarjetaTextController;
  String? Function(BuildContext, String?)?
      txtNumeroTarjetaTextControllerValidator;
  String? _txtNumeroTarjetaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for RadioButtonTarjeta widget.
  FormFieldController<String>? radioButtonTarjetaValueController;
  DateTime? datePicked;
  // State field(s) for txtCodSeguridad widget.
  FocusNode? txtCodSeguridadFocusNode;
  TextEditingController? txtCodSeguridadTextController;
  final txtCodSeguridadMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      txtCodSeguridadTextControllerValidator;
  String? _txtCodSeguridadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for txtNombreFactura widget.
  FocusNode? txtNombreFacturaFocusNode;
  TextEditingController? txtNombreFacturaTextController;
  String? Function(BuildContext, String?)?
      txtNombreFacturaTextControllerValidator;
  // State field(s) for txtCorreoFactura widget.
  FocusNode? txtCorreoFacturaFocusNode;
  TextEditingController? txtCorreoFacturaTextController;
  String? Function(BuildContext, String?)?
      txtCorreoFacturaTextControllerValidator;
  // State field(s) for txtTelefonoFactura widget.
  FocusNode? txtTelefonoFacturaFocusNode;
  TextEditingController? txtTelefonoFacturaTextController;
  String? Function(BuildContext, String?)?
      txtTelefonoFacturaTextControllerValidator;
  // State field(s) for txtDescriptionFactura widget.
  FocusNode? txtDescriptionFacturaFocusNode;
  TextEditingController? txtDescriptionFacturaTextController;
  String? Function(BuildContext, String?)?
      txtDescriptionFacturaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtNombreTarjetaTextControllerValidator =
        _txtNombreTarjetaTextControllerValidator;
    txtNumeroTarjetaTextControllerValidator =
        _txtNumeroTarjetaTextControllerValidator;
    txtCodSeguridadTextControllerValidator =
        _txtCodSeguridadTextControllerValidator;
  }

  @override
  void dispose() {
    txtNombreTarjetaFocusNode?.dispose();
    txtNombreTarjetaTextController?.dispose();

    txtNumeroTarjetaFocusNode?.dispose();
    txtNumeroTarjetaTextController?.dispose();

    txtCodSeguridadFocusNode?.dispose();
    txtCodSeguridadTextController?.dispose();

    txtNombreFacturaFocusNode?.dispose();
    txtNombreFacturaTextController?.dispose();

    txtCorreoFacturaFocusNode?.dispose();
    txtCorreoFacturaTextController?.dispose();

    txtTelefonoFacturaFocusNode?.dispose();
    txtTelefonoFacturaTextController?.dispose();

    txtDescriptionFacturaFocusNode?.dispose();
    txtDescriptionFacturaTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonTarjetaValue =>
      radioButtonTarjetaValueController?.value;
}
