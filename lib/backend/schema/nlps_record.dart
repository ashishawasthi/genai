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
    ..content = '';

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
        ..content = content,
    ),
  );

  return firestoreData;
}
