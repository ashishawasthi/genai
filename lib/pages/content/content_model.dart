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

class ContentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ContentText widget.
  TextEditingController? contentTextController;
  String? Function(BuildContext, String?)? contentTextControllerValidator;
  // State field(s) for age18to25 widget.
  bool? age18to25Value;
  // State field(s) for age25to35 widget.
  bool? age25to35Value;
  // State field(s) for age35to50 widget.
  bool? age35to50Value;
  // State field(s) for age50to65 widget.
  bool? age50to65Value;
  // State field(s) for age65to80 widget.
  bool? age65to80Value;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NlpsRecord? createdContentNlp;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    contentTextController?.dispose();
  }

  /// Additional helper methods are added here.

}
