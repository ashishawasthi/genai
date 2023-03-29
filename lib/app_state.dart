import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _session = prefs.getString('ff_session') ?? _session;
    _topics = prefs.getStringList('ff_topics') ?? _topics;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _session = '';
  String get session => _session;
  set session(String _value) {
    _session = _value;
    prefs.setString('ff_session', _value);
  }

  List<String> _topics = [
    'App Slowness',
    'Login',
    'Transaction Issues',
    'Loan Services',
    'Rates and Fees',
    'Nav Planner for Fianncial Planning',
    'LivBetter for Carbon Footprint',
    'Insights for Intelligent Banking'
  ];
  List<String> get topics => _topics;
  set topics(List<String> _value) {
    _topics = _value;
    prefs.setStringList('ff_topics', _value);
  }

  void addToTopics(String _value) {
    _topics.add(_value);
    prefs.setStringList('ff_topics', _topics);
  }

  void removeFromTopics(String _value) {
    _topics.remove(_value);
    prefs.setStringList('ff_topics', _topics);
  }

  void removeAtIndexFromTopics(int _index) {
    _topics.removeAt(_index);
    prefs.setStringList('ff_topics', _topics);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
