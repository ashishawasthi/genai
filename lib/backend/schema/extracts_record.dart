import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'extracts_record.g.dart';

abstract class ExtractsRecord
    implements Built<ExtractsRecord, ExtractsRecordBuilder> {
  static Serializer<ExtractsRecord> get serializer =>
      _$extractsRecordSerializer;

  String? get url;

  String? get clean;

  DocumentReference? get nlpRef;

  bool? get fetched;

  bool? get briefed;

  String? get owner;

  DateTime? get updated;

  String? get summary;

  BuiltList<String>? get facts;

  String? get response;

  int? get words;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ExtractsRecordBuilder builder) => builder
    ..url = ''
    ..clean = ''
    ..fetched = false
    ..briefed = false
    ..owner = ''
    ..summary = ''
    ..facts = ListBuilder()
    ..response = ''
    ..words = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('extracts');

  static Stream<ExtractsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExtractsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExtractsRecord._();
  factory ExtractsRecord([void Function(ExtractsRecordBuilder) updates]) =
      _$ExtractsRecord;

  static ExtractsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExtractsRecordData({
  String? url,
  String? clean,
  DocumentReference? nlpRef,
  bool? fetched,
  bool? briefed,
  String? owner,
  DateTime? updated,
  String? summary,
  String? response,
  int? words,
}) {
  final firestoreData = serializers.toFirestore(
    ExtractsRecord.serializer,
    ExtractsRecord(
      (e) => e
        ..url = url
        ..clean = clean
        ..nlpRef = nlpRef
        ..fetched = fetched
        ..briefed = briefed
        ..owner = owner
        ..updated = updated
        ..summary = summary
        ..facts = null
        ..response = response
        ..words = words,
    ),
  );

  return firestoreData;
}
