import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'meditation_pages_model.dart';
export 'meditation_pages_model.dart';

class MeditationPagesWidget extends StatefulWidget {
  const MeditationPagesWidget({super.key});

  @override
  State<MeditationPagesWidget> createState() => _MeditationPagesWidgetState();
}

class _MeditationPagesWidgetState extends State<MeditationPagesWidget>
    with TickerProviderStateMixin {
  late MeditationPagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeditationPagesModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
      future: queryMeditiationProgressRecordCount(
        queryBuilder: (meditiationProgressRecord) =>
            meditiationProgressRecord.where(
          'meditatioProgressUser',
          isEqualTo: currentUserReference,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        int meditationPagesCount = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  'Meditation',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'ProfilePages',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                              ),
                            },
                          );
                        },
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            currentUserPhoto,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                centerTitle: false,
                elevation: 0.0,
              ),
              body: SafeArea(
                top: true,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 1.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x25090F13),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome to Meditation',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    'Find peace and tranquility with our guided meditations.',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Divider(
                                    height: 24.0,
                                    thickness: 2.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Daily Meditations',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              meditationPagesCount.toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .displaySmall
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Last Meditation',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            StreamBuilder<
                                                List<
                                                    MeditiationProgressRecord>>(
                                              stream:
                                                  queryMeditiationProgressRecord(
                                                queryBuilder:
                                                    (meditiationProgressRecord) =>
                                                        meditiationProgressRecord
                                                            .where(
                                                  'meditatioProgressUser',
                                                  isEqualTo:
                                                      currentUserReference,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<MeditiationProgressRecord>
                                                    rowMeditiationProgressRecordList =
                                                    snapshot.data!;
                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: List.generate(
                                                      rowMeditiationProgressRecordList
                                                          .length, (rowIndex) {
                                                    final rowMeditiationProgressRecord =
                                                        rowMeditiationProgressRecordList[
                                                            rowIndex];
                                                    return Text(
                                                      dateTimeFormat(
                                                          'relative',
                                                          rowMeditiationProgressRecord
                                                              .meditationTIme!),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            fontSize: 27.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Meditations',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'MusicPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 1.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x411D2429),
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                        spreadRadius: 0.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 1.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://images.unsplash.com/photo-1515332624078-a1273bf79707?w=1280&h=720',
                                              width: 70.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 4.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Music for Relaxation',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 8.0, 0.0),
                                                  child: Text(
                                                    'Make your day with music to stay calm and focus.',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.chevron_right_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'VideoMeditaiton',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 1.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x411D2429),
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                        spreadRadius: 0.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 1.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://images.unsplash.com/photo-1604046767104-e53cd9f82be5?w=1280&h=720',
                                              width: 70.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 4.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Stress Relief Guide',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 8.0, 0.0),
                                                  child: Text(
                                                    'Release tension and find inner peace.',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.chevron_right_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 4.0, 8.0),
                                              child: Text(
                                                '15 min',
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 16.0),
                        child: Text(
                          'Your Progress',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 1.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1508583732154-e9ff899f8534?w=1280&h=720',
                                      width: double.infinity,
                                      height: 140.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'ProgressBoard',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 39.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'See Your Progress',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!),
              ),
            ),
          ),
        );
      },
    );
  }
}
