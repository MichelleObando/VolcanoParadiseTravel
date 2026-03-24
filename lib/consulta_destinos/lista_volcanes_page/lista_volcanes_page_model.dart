import '/flutter_flow/flutter_flow_util.dart';
import 'lista_volcanes_page_widget.dart' show ListaVolcanesPageWidget;
import 'package:flutter/material.dart';

class ListaVolcanesPageModel extends FlutterFlowModel<ListaVolcanesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtBuscarVolcan widget.
  FocusNode? txtBuscarVolcanFocusNode;
  TextEditingController? txtBuscarVolcanTextController;
  String? Function(BuildContext, String?)?
      txtBuscarVolcanTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscarVolcanFocusNode?.dispose();
    txtBuscarVolcanTextController?.dispose();
  }
}
