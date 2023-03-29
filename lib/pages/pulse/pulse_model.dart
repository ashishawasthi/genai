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
  ///  Local state fields for this page.

  bool editingCategories = false;

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
  // State field(s) for Cat1 widget.
  TextEditingController? cat1Controller;
  String? Function(BuildContext, String?)? cat1ControllerValidator;
  // State field(s) for Cat2 widget.
  TextEditingController? cat2Controller;
  String? Function(BuildContext, String?)? cat2ControllerValidator;
  // State field(s) for Cat3 widget.
  TextEditingController? cat3Controller;
  String? Function(BuildContext, String?)? cat3ControllerValidator;
  // State field(s) for Cat4 widget.
  TextEditingController? cat4Controller;
  String? Function(BuildContext, String?)? cat4ControllerValidator;
  // State field(s) for Cat5 widget.
  TextEditingController? cat5Controller;
  String? Function(BuildContext, String?)? cat5ControllerValidator;
  // State field(s) for Cat6 widget.
  TextEditingController? cat6Controller;
  String? Function(BuildContext, String?)? cat6ControllerValidator;
  // State field(s) for Cat7 widget.
  TextEditingController? cat7Controller;
  String? Function(BuildContext, String?)? cat7ControllerValidator;
  // State field(s) for Cat8 widget.
  TextEditingController? cat8Controller;
  String? Function(BuildContext, String?)? cat8ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    feedback1Controller?.dispose();
    feedback2Controller?.dispose();
    feedback3Controller?.dispose();
    feedback4Controller?.dispose();
    feedback5Controller?.dispose();
    cat1Controller?.dispose();
    cat2Controller?.dispose();
    cat3Controller?.dispose();
    cat4Controller?.dispose();
    cat5Controller?.dispose();
    cat6Controller?.dispose();
    cat7Controller?.dispose();
    cat8Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
