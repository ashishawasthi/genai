import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'contents_record.g.dart';

abstract class ContentsRecord
    implements Built<ContentsRecord, ContentsRecordBuilder> {
  static Serializer<ContentsRecord> get serializer =>
      _$contentsRecordSerializer;

  String? get gender;

  @BuiltValueField(wireName: 'employment_status')
  String? get employmentStatus;

  @BuiltValueField(wireName: 'minimum_age')
  int? get minimumAge;

  @BuiltValueField(wireName: 'maximum_age')
  int? get maximumAge;

  String? get subject;

  String? get body;

  String? get submission;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ContentsRecordBuilder builder) => builder
    ..gender = ''
    ..employmentStatus = ''
    ..minimumAge = 0
    ..maximumAge = 0
    ..subject = ''
    ..body = ''
    ..submission = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('contents')
          : FirebaseFirestore.instance.collectionGroup('contents');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('contents').doc();

  static Stream<ContentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ContentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ContentsRecord._();
  factory ContentsRecord([void Function(ContentsRecordBuilder) updates]) =
      _$ContentsRecord;

  static ContentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createContentsRecordData({
  String? gender,
  String? employmentStatus,
  int? minimumAge,
  int? maximumAge,
  String? subject,
  String? body,
  String? submission,
  DateTime? createdTime,
}) {
  final firestoreData = serializers.toFirestore(
    ContentsRecord.serializer,
    ContentsRecord(
      (c) => c
        ..gender = gender
        ..employmentStatus = employmentStatus
        ..minimumAge = minimumAge
        ..maximumAge = maximumAge
        ..subject = subject
        ..body = body
        ..submission = submission
        ..createdTime = createdTime,
    ),
  );

  return firestoreData;
}
