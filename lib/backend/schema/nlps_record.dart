import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nlps_record.g.dart';

abstract class NlpsRecord implements Built<NlpsRecord, NlpsRecordBuilder> {
  static Serializer<NlpsRecord> get serializer => _$nlpsRecordSerializer;

  String? get owner;

  String? get request;

  DateTime? get created;

  String? get response;

  DateTime? get updated;

  BuiltList<String>? get feedbacks;

  bool? get chached;

  bool? get successful;

  String? get type;

  String? get system;

  String? get content;

  bool? get age18to25;

  bool? get age25to35;

  bool? get age35to50;

  bool? get age50to65;

  bool? get age65to80;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NlpsRecordBuilder builder) => builder
    ..owner = ''
    ..request = ''
    ..response = ''
    ..feedbacks = ListBuilder()
    ..chached = false
    ..successful = false
    ..type = ''
    ..system = ''
    ..content = ''
    ..age18to25 = false
    ..age25to35 = false
    ..age35to50 = false
    ..age50to65 = false
    ..age65to80 = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nlps');

  static Stream<NlpsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NlpsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NlpsRecord._();
  factory NlpsRecord([void Function(NlpsRecordBuilder) updates]) = _$NlpsRecord;

  static NlpsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNlpsRecordData({
  String? owner,
  String? request,
  DateTime? created,
  String? response,
  DateTime? updated,
  bool? chached,
  bool? successful,
  String? type,
  String? system,
  String? content,
  bool? age18to25,
  bool? age25to35,
  bool? age35to50,
  bool? age50to65,
  bool? age65to80,
}) {
  final firestoreData = serializers.toFirestore(
    NlpsRecord.serializer,
    NlpsRecord(
      (n) => n
        ..owner = owner
        ..request = request
        ..created = created
        ..response = response
        ..updated = updated
        ..feedbacks = null
        ..chached = chached
        ..successful = successful
        ..type = type
        ..system = system
        ..content = content
        ..age18to25 = age18to25
        ..age25to35 = age25to35
        ..age35to50 = age35to50
        ..age50to65 = age50to65
        ..age65to80 = age65to80,
    ),
  );

  return firestoreData;
}
