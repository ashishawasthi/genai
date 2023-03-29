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
import 'requirement_model.dart';
export 'requirement_model.dart';

class RequirementWidget extends StatefulWidget {
  const RequirementWidget({Key? key}) : super(key: key);

  @override
  _RequirementWidgetState createState() => _RequirementWidgetState();
}

class _RequirementWidgetState extends State<RequirementWidget> {
  late RequirementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequirementModel());

    _model.requirementTextController ??= TextEditingController(
        text:
            'A real-time marketing rule engine for a consumer bank, that consumes customer interaction events and market data events from Kafka topics. It should integrate with customer-360 data-lake and marketing automation platform. The engine should be able to process the events in real-time and generate marketing messages to be sent to customers via owned inbound and outbound channels. The engine should be able to handle regulatory requirements and prevent spamming customers. The engine should be able to integrate AI models to predict product-propensity, allowing for monthly iterative upgrades and prioritizing the most relevant products for customers based on revenue expectations. The engine should be able to measure campaign effectiveness using control groups.');
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
          'Application Requirements',
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
                      'Requirement Description: ',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: TextFormField(
                      controller: _model.requirementTextController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).tertiaryColor,
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
                      minLines: 20,
                      validator: _model.requirementTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ],
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

                        final epicsCreateData = createEpicsRecordData(
                          owner: FFAppState().session,
                          requirement: _model.requirementTextController.text,
                          processScenarios: false,
                        );
                        var epicsRecordReference = EpicsRecord.collection.doc();
                        await epicsRecordReference.set(epicsCreateData);
                        _model.createdEpic = EpicsRecord.getDocumentFromData(
                            epicsCreateData, epicsRecordReference);
                        await Future.delayed(
                            const Duration(milliseconds: 6000));

                        context.pushNamed(
                          'Stories',
                          queryParams: {
                            'epicRef': serializeParam(
                              _model.createdEpic!.reference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );

                        setState(() {});
                      },
                      text: 'Write User Stories',
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
                        borderRadius: BorderRadius.circular(25.0),
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
