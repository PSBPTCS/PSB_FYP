import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'community_page_model.dart';
export 'community_page_model.dart';

class CommunityPageWidget extends StatefulWidget {
  const CommunityPageWidget({super.key});

  @override
  State<CommunityPageWidget> createState() => _CommunityPageWidgetState();
}

class _CommunityPageWidgetState extends State<CommunityPageWidget> {
  late CommunityPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            title: Text(
              'Community',
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
                  StreamBuilder<List<CommunityRecord>>(
                    stream: queryCommunityRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<CommunityRecord> containerCommunityRecordList =
                          snapshot.data!;
                      return Container(
                        width: double.infinity,
                        height: 290.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final slideBanner =
                                containerCommunityRecordList.toList();
                            return ListView.separated(
                              padding: const EdgeInsets.fromLTRB(
                                16.0,
                                0,
                                16.0,
                                0,
                              ),
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: slideBanner.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 12.0),
                              itemBuilder: (context, slideBannerIndex) {
                                final slideBannerItem =
                                    slideBanner[slideBannerIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: Container(
                                    width: 354.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        child: Image.network(
                                          slideBannerItem.slideBannerUrl,
                                          width: 0.0,
                                          height: 120.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      );
                    },
                  ),
                  Divider(
                    height: 8.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search all articles...',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        suffixIcon: Icon(
                          Icons.search_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Popular Today',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  StreamBuilder<List<ArticleRecord>>(
                    stream: queryArticleRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<ArticleRecord> listViewArticleRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          8.0,
                          0,
                          44.0,
                        ),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewArticleRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewArticleRecord =
                              listViewArticleRecordList[listViewIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'article',
                                queryParameters: {
                                  'tttle': serializeParam(
                                    listViewArticleRecord.articleTittle,
                                    ParamType.String,
                                  ),
                                  'image': serializeParam(
                                    listViewArticleRecord.articleImage,
                                    ParamType.String,
                                  ),
                                  'content': serializeParam(
                                    listViewArticleRecord.articleContent,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: 100.0,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.network(
                                            listViewArticleRecord.articleImage,
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listViewArticleRecord
                                                  .articleTittle,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: FutureBuilder<int>(
                                                future:
                                                    queryCommentsRecordCount(
                                                  queryBuilder:
                                                      (commentsRecord) =>
                                                          commentsRecord.where(
                                                    'post_type',
                                                    isEqualTo: 'article',
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
                                                  int rowCount = snapshot.data!;
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Text(
                                                          listViewArticleRecord
                                                              .articleCreator,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons
                                                              .chat_bubble_outline_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowCount.toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          dateTimeFormat(
                                                              'MMMEd',
                                                              listViewArticleRecord
                                                                  .articleCreate!),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 8.0, 12.0, 0.0),
                                              child: Text(
                                                'Read Now',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Divider(
                    height: 8.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
