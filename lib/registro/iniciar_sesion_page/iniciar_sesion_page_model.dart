import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'iniciar_sesion_page_widget.dart' show IniciarSesionPageWidget;
import 'package:flutter/material.dart';

class IniciarSesionPageModel extends FlutterFlowModel<IniciarSesionPageWidget> {
  ///  State fields for stateful widgets in this page.

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
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtPassFocusNode?.dispose();
    txtPassTextController?.dispose();
  }
}
