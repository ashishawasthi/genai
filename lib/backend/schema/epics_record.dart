import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'epics_record.g.dart';

abstract class EpicsRecord implements Built<EpicsRecord, EpicsRecordBuilder> {
  static Serializer<EpicsRecord> get serializer => _$epicsRecordSerializer;

  String? get owner;

  bool? get cached;

  String? get requirement;

  String? get response;

  String? get testScenarios;

  bool? get processScenarios;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EpicsRecordBuilder builder) => builder
    ..owner = ''
    ..cached = false
    ..requirement = ''
    ..response = ''
    ..testScenarios = ''
    ..processScenarios = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('epics');

  static Stream<EpicsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EpicsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EpicsRecord._();
  factory EpicsRecord([void Function(EpicsRecordBuilder) updates]) =
      _$EpicsRecord;

  static EpicsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEpicsRecordData({
  String? owner,
  bool? cached,
  String? requirement,
  String? response,
  String? testScenarios,
  bool? processScenarios,
}) {
  final firestoreData = serializers.toFirestore(
    EpicsRecord.serializer,
    EpicsRecord(
      (e) => e
        ..owner = owner
        ..cached = cached
        ..requirement = requirement
        ..response = response
        ..testScenarios = testScenarios
        ..processScenarios = processScenarios,
    ),
  );

  return firestoreData;
}
