import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'congratulation_model.dart';
export 'congratulation_model.dart';

class CongratulationWidget extends StatefulWidget {
  const CongratulationWidget({super.key});

  @override
  State<CongratulationWidget> createState() => _CongratulationWidgetState();
}

class _CongratulationWidgetState extends State<CongratulationWidget> {
  late CongratulationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CongratulationModel());
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Congratulations!',
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 45.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  'You have successfully completed your task.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1590698933947-a202b069a861?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNHx8aGFwcHl8ZW58MHx8fHwxNzE3ODkxNTg4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Dashboard');
                  },
                  text: 'Go to Dashboard',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 50.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                              letterSpacing: 0.0,
                            ),
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
