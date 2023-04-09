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
            'An interface for relationship managers to get personalized conversation suggestions based on customer profiles, recent interactions, and usage of products and services. Marketing users should be able to define customer segment-based templates for product offers. The system must comply with regulatory requirements, including configurable frequency caps for conversations. AI models predicting product-propensity should be integrated, with iterative monthly upgrades prioritizing the most relevant products for customers based on revenue expectations. Relationship managers must have the ability to provide feedback on system suggestions, allowing for model improvements. Data engineers should be able to integrate the system with any customer data in the data lake seamlessly.');
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
            'Application Requirements',
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
          child: SingleChildScrollView(
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                      child: Text(
                        'Requirement Description: ',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                      child: TextFormField(
                        controller: _model.requirementTextController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
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
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
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
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 15.0, 20.0, 10.0),
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
                          var epicsRecordReference =
                              EpicsRecord.collection.doc();
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
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
      ),
    );
  }
}
