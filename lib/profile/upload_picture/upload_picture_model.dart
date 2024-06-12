import '/flutter_flow/flutter_flow_util.dart';
import '/profile/change_photo/change_photo_widget.dart';
import 'upload_picture_widget.dart' show UploadPictureWidget;
import 'package:flutter/material.dart';

class UploadPictureModel extends FlutterFlowModel<UploadPictureWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ChangePhoto component.
  late ChangePhotoModel changePhotoModel;

  @override
  void initState(BuildContext context) {
    changePhotoModel = createModel(context, () => ChangePhotoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    changePhotoModel.dispose();
  }
}
