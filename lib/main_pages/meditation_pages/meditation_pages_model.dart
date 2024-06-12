import '/flutter_flow/flutter_flow_util.dart';
import 'meditation_pages_widget.dart' show MeditationPagesWidget;
import 'package:flutter/material.dart';

class MeditationPagesModel extends FlutterFlowModel<MeditationPagesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
