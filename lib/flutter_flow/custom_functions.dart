import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

List<String> addNonEmptyToList(
  String? f1,
  String? f2,
  String? f3,
  String? f4,
  String? f5,
) {
  List<String> list = [];
  if (f1 != null && f1.trim().isNotEmpty) {
    list.add(f1);
  }
  if (f2 != null && f2.trim().isNotEmpty) {
    list.add(f2);
  }
  if (f3 != null && f3.trim().isNotEmpty) {
    list.add(f3);
  }
  if (f4 != null && f4.trim().isNotEmpty) {
    list.add(f4);
  }
  if (f5 != null && f5.trim().isNotEmpty) {
    list.add(f5);
  }
  return list;
}
