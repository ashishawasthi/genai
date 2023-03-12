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

class PulseModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Feedback1 widget.
  TextEditingController? feedback1Controller;
  String? Function(BuildContext, String?)? feedback1ControllerValidator;
  // State field(s) for Feedback2 widget.
  TextEditingController? feedback2Controller;
  String? Function(BuildContext, String?)? feedback2ControllerValidator;
  // State field(s) for Feedback3 widget.
  TextEditingController? feedback3Controller;
  String? Function(BuildContext, String?)? feedback3ControllerValidator;
  // State field(s) for Feedback4 widget.
  TextEditingController? feedback4Controller;
  String? Function(BuildContext, String?)? feedback4ControllerValidator;
  // State field(s) for Feedback5 widget.
  TextEditingController? feedback5Controller;
  String? Function(BuildContext, String?)? feedback5ControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NlpsRecord? createdFeedbackNlp;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    feedback1Controller?.dispose();
    feedback2Controller?.dispose();
    feedback3Controller?.dispose();
    feedback4Controller?.dispose();
    feedback5Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
