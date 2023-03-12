import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nlps_record.g.dart';

abstract class NlpsRecord implements Built<NlpsRecord, NlpsRecordBuilder> {
  static Serializer<NlpsRecord> get serializer => _$nlpsRecordSerializer;

  bool? get feedback;

  String? get owner;

  String? get request;

  DateTime? get created;

  String? get response;

  DateTime? get updated;

  BuiltList<String>? get feedbacks;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NlpsRecordBuilder builder) => builder
    ..feedback = false
    ..owner = ''
    ..request = ''
    ..response = ''
    ..feedbacks = ListBuilder();

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
  bool? feedback,
  String? owner,
  String? request,
  DateTime? created,
  String? response,
  DateTime? updated,
}) {
  final firestoreData = serializers.toFirestore(
    NlpsRecord.serializer,
    NlpsRecord(
      (n) => n
        ..feedback = feedback
        ..owner = owner
        ..request = request
        ..created = created
        ..response = response
        ..updated = updated
        ..feedbacks = null,
    ),
  );

  return firestoreData;
}
