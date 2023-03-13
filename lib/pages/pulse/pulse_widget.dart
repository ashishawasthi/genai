import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pulse_model.dart';
export 'pulse_model.dart';

class PulseWidget extends StatefulWidget {
  const PulseWidget({Key? key}) : super(key: key);

  @override
  _PulseWidgetState createState() => _PulseWidgetState();
}

class _PulseWidgetState extends State<PulseWidget> {
  late PulseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PulseModel());

    _model.feedback1Controller ??= TextEditingController(
        text:
            'Nav Planner and Insights are very helpful for managing my finance. I manage all my savings and expenses from the app and it helps me manage all my financial needs.');
    _model.feedback2Controller ??=
        TextEditingController(text: 'Best bank in the world. ');
    _model.feedback3Controller ??= TextEditingController(
        text: 'Tracking carbon foorprints is a great new feature');
    _model.feedback4Controller ??= TextEditingController(
        text: 'Fingerprint login in failing since this morning for me');
    _model.feedback5Controller ??= TextEditingController(
        text:
            'App is now slower than before. I have to now wait for app to open, to make payments');
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
          'Customer Pulse - Demo',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                    child: Text(
                      'Enter Customer Feedback to Analyse:',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: TextFormField(
                  controller: _model.feedback1Controller,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: '[Do not put proprietary information]',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
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
                    fillColor: FlutterFlowTheme.of(context).primaryColor,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  maxLines: null,
                  validator:
                      _model.feedback1ControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: TextFormField(
                  controller: _model.feedback2Controller,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: '[Do not put proprietary information]',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
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
                    fillColor: FlutterFlowTheme.of(context).primaryColor,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  maxLines: null,
                  validator:
                      _model.feedback2ControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: TextFormField(
                  controller: _model.feedback3Controller,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: '[Do not put proprietary information]',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
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
                    fillColor: FlutterFlowTheme.of(context).primaryColor,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  maxLines: null,
                  validator:
                      _model.feedback3ControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: TextFormField(
                  controller: _model.feedback4Controller,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: '[Do not put proprietary information]',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
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
                    fillColor: FlutterFlowTheme.of(context).primaryColor,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  maxLines: null,
                  validator:
                      _model.feedback4ControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: TextFormField(
                  controller: _model.feedback5Controller,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: '[Do not put proprietary information]',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
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
                    fillColor: FlutterFlowTheme.of(context).primaryColor,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  maxLines: null,
                  validator:
                      _model.feedback5ControllerValidator.asValidator(context),
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

                        final nlpsCreateData = {
                          ...createNlpsRecordData(
                            owner: FFAppState().session,
                            request: '',
                            type: 'feedback',
                          ),
                          'feedbacks': functions.addNonEmptyToList(
                              _model.feedback1Controller.text,
                              _model.feedback2Controller.text,
                              _model.feedback3Controller.text,
                              _model.feedback4Controller.text,
                              _model.feedback5Controller.text),
                        };
                        var nlpsRecordReference = NlpsRecord.collection.doc();
                        await nlpsRecordReference.set(nlpsCreateData);
                        _model.createdFeedbackNlp =
                            NlpsRecord.getDocumentFromData(
                                nlpsCreateData, nlpsRecordReference);
                        await Future.delayed(
                            const Duration(milliseconds: 4000));
                        // GotoFeedbacks

                        context.pushNamed('Feedbacks');

                        setState(() {});
                      },
                      text: 'Publish Feedback',
                      options: FFButtonOptions(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
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
