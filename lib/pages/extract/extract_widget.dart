import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'extract_model.dart';
export 'extract_model.dart';

class ExtractWidget extends StatefulWidget {
  const ExtractWidget({
    Key? key,
    this.extract,
  }) : super(key: key);

  final ExtractsRecord? extract;

  @override
  _ExtractWidgetState createState() => _ExtractWidgetState();
}

class _ExtractWidgetState extends State<ExtractWidget> {
  late ExtractModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExtractModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.extract == null) {
        context.pushNamed('Fetch');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          fillColor: FlutterFlowTheme.of(context).primaryColor,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Extracted Knowlege Base',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: StreamBuilder<ExtractsRecord>(
            stream: ExtractsRecord.getDocument(widget.extract!.reference),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitPulse(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 50.0,
                    ),
                  ),
                );
              }
              final columnExtractsRecord = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (columnExtractsRecord.summary == null ||
                        columnExtractsRecord.summary == '')
                      Text(
                        '(It takes ~30 seconds to process document)',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 11.0,
                            ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(3.0, 3.0, 3.0, 3.0),
                      child: Container(
                        width: double.infinity,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Text(
                              'Text extracted from the document:',
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                      ),
                            ),
                            collapsed: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '(Expand to see extracted document details)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 12.0,
                                      ),
                                ),
                              ],
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Builder(
                                  builder: (context) {
                                    final fact =
                                        columnExtractsRecord.facts!.toList();
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(fact.length,
                                          (factIndex) {
                                        final factItem = fact[factIndex];
                                        return Text(
                                          factItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        );
                                      }),
                                    );
                                  },
                                ),
                                Text(
                                  columnExtractsRecord.clean!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: Text(
                                'Logline:',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: Text(
                                columnExtractsRecord.summary!,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 15.0, 20.0, 10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              if (FFAppState().session == null ||
                                  FFAppState().session == '') {
                                // SetRamdomSession
                                FFAppState().session = random_data.randomString(
                                  10,
                                  10,
                                  true,
                                  true,
                                  true,
                                );
                              }
                              if (columnExtractsRecord.words == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Extraction in progress, please wait',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 5000),
                                    backgroundColor: Color(0x00000000),
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                              if (columnExtractsRecord.words! < 1) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'No content found, please check the URL.',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 5000),
                                    backgroundColor: Color(0x00000000),
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                              // CreateExtract

                              final chatsCreateData = {
                                ...createChatsRecordData(
                                  owner: FFAppState().session,
                                  processed: false,
                                ),
                                'conversation': [
                                  'Bot: Let me know your question on these documents'
                                ],
                              };
                              var chatsRecordReference = ChatsRecord.createDoc(
                                  columnExtractsRecord.reference);
                              await chatsRecordReference.set(chatsCreateData);
                              _model.createdChat =
                                  ChatsRecord.getDocumentFromData(
                                      chatsCreateData, chatsRecordReference);
                              _shouldSetState = true;
                              await Future.delayed(
                                  const Duration(milliseconds: 6000));
                              // GotoFeedbacks

                              context.pushNamed(
                                'Chat',
                                queryParams: {
                                  'chatRef': serializeParam(
                                    _model.createdChat!.reference,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );

                              if (_shouldSetState) setState(() {});
                            },
                            text: 'Chat',
                            options: FFButtonOptions(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
