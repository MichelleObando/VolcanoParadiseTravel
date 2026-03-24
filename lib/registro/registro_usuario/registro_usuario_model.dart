import '/flutter_flow/flutter_flow_util.dart';
import 'registro_usuario_widget.dart' show RegistroUsuarioWidget;
import 'package:flutter/material.dart';

class RegistroUsuarioModel extends FlutterFlowModel<RegistroUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TxtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for TxtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for TxtPass widget.
  FocusNode? txtPassFocusNode;
  TextEditingController? txtPassTextController;
  late bool txtPassVisibility;
  String? Function(BuildContext, String?)? txtPassTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    txtPassVisibility = false;
  }

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtPassFocusNode?.dispose();
    txtPassTextController?.dispose();
  }
}
