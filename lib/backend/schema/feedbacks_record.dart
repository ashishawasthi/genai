import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feedbacks_record.g.dart';

abstract class FeedbacksRecord
    implements Built<FeedbacksRecord, FeedbacksRecordBuilder> {
  static Serializer<FeedbacksRecord> get serializer =>
      _$feedbacksRecordSerializer;

  DocumentReference? get nlp;

  int? get item;

  String? get submission;

  String? get owner;

  BuiltList<SentimentStruct>? get analysis;

  DateTime? get created;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FeedbacksRecordBuilder builder) => builder
    ..item = 0
    ..submission = ''
    ..owner = ''
    ..analysis = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedbacks');

  static Stream<FeedbacksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FeedbacksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FeedbacksRecord._();
  factory FeedbacksRecord([void Function(FeedbacksRecordBuilder) updates]) =
      _$FeedbacksRecord;

  static FeedbacksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFeedbacksRecordData({
  DocumentReference? nlp,
  int? item,
  String? submission,
  String? owner,
  DateTime? created,
}) {
  final firestoreData = serializers.toFirestore(
    FeedbacksRecord.serializer,
    FeedbacksRecord(
      (f) => f
        ..nlp = nlp
        ..item = item
        ..submission = submission
        ..owner = owner
        ..analysis = null
        ..created = created,
    ),
  );

  return firestoreData;
}
