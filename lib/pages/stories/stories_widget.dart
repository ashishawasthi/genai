import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stories_model.dart';
export 'stories_model.dart';

class StoriesWidget extends StatefulWidget {
  const StoriesWidget({
    Key? key,
    this.epicRef,
  }) : super(key: key);

  final DocumentReference? epicRef;

  @override
  _StoriesWidgetState createState() => _StoriesWidgetState();
}

class _StoriesWidgetState extends State<StoriesWidget> {
  late StoriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoriesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.epicRef == null) {
        context.pushNamed('Requirement');
      }
    });

    _model.storyController ??= TextEditingController();
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
          'Stories & Scenarios',
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
          child: StreamBuilder<EpicsRecord>(
            stream: EpicsRecord.getDocument(widget.epicRef!),
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
              final stackEpicsRecord = snapshot.data!;
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (stackEpicsRecord.stories!.toList().length > 0)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 15.0),
                                child: Text(
                                  'User Stories:',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            if (stackEpicsRecord.stories!.toList().length == 0)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 15.0),
                                child: Text(
                                  'Please wait, It may take ~10 seconds to process',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 14.0,
                                      ),
                                ),
                              ),
                          ],
                        ),
                        Builder(
                          builder: (context) {
                            final story = stackEpicsRecord.stories!.toList();
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children:
                                    List.generate(story.length, (storyIndex) {
                                  final storyItem = story[storyIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 8.0, 2.0),
                                            child: SelectionArea(
                                                child: Text(
                                              storyItem,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
                                                      ),
                                            )),
                                          ),
                                          if (currentUserEmailVerified)
                                            AuthUserStreamWidget(
                                              builder: (context) => InkWell(
                                                onTap: () async {
                                                  final epicsUpdateData = {
                                                    'stories':
                                                        FieldValue.arrayRemove(
                                                            [storyItem]),
                                                  };
                                                  await widget.epicRef!
                                                      .update(epicsUpdateData);
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 500));
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 12.0,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                        Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Visibility(
                              visible:
                                  stackEpicsRecord.stories!.toList().length > 0,
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 15.0, 20.0, 10.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      _model.addingStory = true;
                                    });
                                  },
                                  text: 'Add a User Story',
                                  options: FFButtonOptions(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible:
                                  stackEpicsRecord.stories!.toList().length > 0,
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 15.0, 20.0, 10.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final epicsUpdateData =
                                        createEpicsRecordData(
                                      processScenarios: true,
                                    );
                                    await widget.epicRef!
                                        .update(epicsUpdateData);
                                    await Future.delayed(
                                        const Duration(milliseconds: 20000));
                                  },
                                  text: '(Re)write Test Scenarios',
                                  options: FFButtonOptions(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (stackEpicsRecord.testScenarios != null &&
                            stackEpicsRecord.testScenarios != '')
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 20.0, 8.0, 8.0),
                              child: SelectionArea(
                                  child: Text(
                                stackEpicsRecord.testScenarios!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 14.0,
                                    ),
                              )),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (_model.addingStory)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 2.0),
                                  child: Text(
                                    'New user story:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 14.0,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 2.0),
                                  child: InkWell(
                                    onTap: () async {
                                      setState(() {
                                        _model.addingStory = false;
                                      });
                                    },
                                    child: Icon(
                                      Icons.close_rounded,
                                      color: Colors.black,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 5.0, 5.0),
                              child: TextFormField(
                                controller: _model.storyController,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                maxLines: null,
                                minLines: 15,
                                validator: _model.storyControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 15.0, 20.0, 10.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (!(_model.storyController.text != null &&
                                      _model.storyController.text != '')) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Please add the story to save',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                      ),
                                    );
                                    return;
                                  }

                                  final epicsUpdateData = {
                                    'stories': FieldValue.arrayUnion(
                                        [_model.storyController.text]),
                                  };
                                  await stackEpicsRecord.reference
                                      .update(epicsUpdateData);
                                  await Future.delayed(
                                      const Duration(milliseconds: 500));
                                  setState(() {
                                    _model.addingStory = false;
                                  });
                                },
                                text: 'Save Story',
                                options: FFButtonOptions(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 20.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
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
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
