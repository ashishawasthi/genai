import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'content_model.dart';
export 'content_model.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({Key? key}) : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  late ContentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentModel());

    _model.contentTextController ??= TextEditingController(
        text:
            'Get home loan for only 2% interest rate. No processing fee. Free expert guidance.');
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
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
            fillColor: FlutterFlowTheme.of(context).primary,
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
            'Content to Rewrite ',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: Text(
                      'Content: ',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: TextFormField(
                      controller: _model.contentTextController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: '[Short summary of content]',
                        hintStyle: FlutterFlowTheme.of(context).bodySmall,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).tertiary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).primary,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      maxLines: null,
                      validator: _model.contentTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                child: Wrap(
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                      child: Text(
                        'Demographics to write for: ',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    SwitchListTile(
                      value: _model.age18to25Value ??= true,
                      onChanged: (newValue) async {
                        setState(() => _model.age18to25Value = newValue!);
                      },
                      title: Text(
                        'Age 18 to 25, unemployed, male/female',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                    SwitchListTile(
                      value: _model.age25to35Value ??= true,
                      onChanged: (newValue) async {
                        setState(() => _model.age25to35Value = newValue!);
                      },
                      title: Text(
                        'Age 25 to 35, employed, male/female',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                    SwitchListTile(
                      value: _model.age35to50Value ??= true,
                      onChanged: (newValue) async {
                        setState(() => _model.age35to50Value = newValue!);
                      },
                      title: Text(
                        'Age 35 to 50, employed, male/female',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                    SwitchListTile(
                      value: _model.age50to65Value ??= false,
                      onChanged: (newValue) async {
                        setState(() => _model.age50to65Value = newValue!);
                      },
                      title: Text(
                        'Age 50 to 65, employed, male/female',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                    SwitchListTile(
                      value: _model.age65to80Value ??= false,
                      onChanged: (newValue) async {
                        setState(() => _model.age65to80Value = newValue!);
                      },
                      title: Text(
                        'Age 65 to 80, retired, male/female',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                            ),
                      ),
                      tileColor: FlutterFlowTheme.of(context).primary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
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
                        // CreateFeedbackNlp

                        final nlpsCreateData = createNlpsRecordData(
                          type: 'content',
                          content: _model.contentTextController.text,
                          request: '',
                          owner: FFAppState().session,
                          age18to25: _model.age18to25Value,
                          age25to35: _model.age25to35Value,
                          age35to50: _model.age35to50Value,
                          age50to65: _model.age50to65Value,
                          age65to80: _model.age65to80Value,
                        );
                        var nlpsRecordReference = NlpsRecord.collection.doc();
                        await nlpsRecordReference.set(nlpsCreateData);
                        _model.createdContentNlp =
                            NlpsRecord.getDocumentFromData(
                                nlpsCreateData, nlpsRecordReference);
                        await Future.delayed(
                            const Duration(milliseconds: 6000));
                        // GotoFeedbacks

                        context.pushNamed(
                          'Contents',
                          queryParams: {
                            'nlp': serializeParam(
                              _model.createdContentNlp,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'nlp': _model.createdContentNlp,
                          },
                        );

                        setState(() {});
                      },
                      text: 'Rewrite Content',
                      options: FFButtonOptions(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
