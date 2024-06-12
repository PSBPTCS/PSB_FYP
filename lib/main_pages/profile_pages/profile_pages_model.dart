import '/flutter_flow/flutter_flow_util.dart';
import 'profile_pages_widget.dart' show ProfilePagesWidget;
import 'package:flutter/material.dart';

class ProfilePagesModel extends FlutterFlowModel<ProfilePagesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
