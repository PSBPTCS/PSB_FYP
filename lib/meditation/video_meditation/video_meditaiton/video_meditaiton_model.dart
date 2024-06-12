import '/flutter_flow/flutter_flow_util.dart';
import 'video_meditaiton_widget.dart' show VideoMeditaitonWidget;
import 'package:flutter/material.dart';

class VideoMeditaitonModel extends FlutterFlowModel<VideoMeditaitonWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
