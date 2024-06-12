import '/flutter_flow/flutter_flow_util.dart';
import 'congratulation_widget.dart' show CongratulationWidget;
import 'package:flutter/material.dart';

class CongratulationModel extends FlutterFlowModel<CongratulationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
