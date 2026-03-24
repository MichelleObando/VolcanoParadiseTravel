import '/flutter_flow/flutter_flow_util.dart';
import 'formulario_oferta_page_widget.dart' show FormularioOfertaPageWidget;
import 'package:flutter/material.dart';

class FormularioOfertaPageModel
    extends FlutterFlowModel<FormularioOfertaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textFieldTextController1;
  String? Function(BuildContext, String?)? textFieldTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textFieldTextController2;
  String? Function(BuildContext, String?)? textFieldTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textFieldTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    textFieldTextController2?.dispose();
  }
}
