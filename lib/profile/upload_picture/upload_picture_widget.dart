import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/change_photo/change_photo_widget.dart';
import 'package:flutter/material.dart';
import 'upload_picture_model.dart';
export 'upload_picture_model.dart';

class UploadPictureWidget extends StatefulWidget {
  const UploadPictureWidget({super.key});

  @override
  State<UploadPictureWidget> createState() => _UploadPictureWidgetState();
}

class _UploadPictureWidgetState extends State<UploadPictureWidget> {
  late UploadPictureModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadPictureModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.changePhotoModel,
            updateCallback: () => setState(() {}),
            child: const ChangePhotoWidget(),
          ),
        ),
      ),
    );
  }
}
