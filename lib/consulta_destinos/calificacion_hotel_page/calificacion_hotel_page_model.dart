import '/flutter_flow/flutter_flow_util.dart';
import 'calificacion_hotel_page_widget.dart' show CalificacionHotelPageWidget;
import 'package:flutter/material.dart';

class CalificacionHotelPageModel
    extends FlutterFlowModel<CalificacionHotelPageWidget> {
  ///  State fields for stateful widgets in this page.

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
