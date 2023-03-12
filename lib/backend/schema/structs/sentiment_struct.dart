import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'sentiment_struct.g.dart';

abstract class SentimentStruct
    implements Built<SentimentStruct, SentimentStructBuilder> {
  static Serializer<SentimentStruct> get serializer =>
      _$sentimentStructSerializer;

  String? get topic;

  double? get sentiment;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(SentimentStructBuilder builder) => builder
    ..topic = ''
    ..sentiment = 0.0
    ..firestoreUtilData = FirestoreUtilData();

  SentimentStruct._();
  factory SentimentStruct([void Function(SentimentStructBuilder) updates]) =
      _$SentimentStruct;
}

SentimentStruct createSentimentStruct({
  String? topic,
  double? sentiment,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SentimentStruct(
      (s) => s
        ..topic = topic
        ..sentiment = sentiment
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

SentimentStruct? updateSentimentStruct(
  SentimentStruct? sentiment, {
  bool clearUnsetFields = true,
}) =>
    sentiment != null
        ? (sentiment.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addSentimentStructData(
  Map<String, dynamic> firestoreData,
  SentimentStruct? sentiment,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sentiment == null) {
    return;
  }
  if (sentiment.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && sentiment.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sentimentData = getSentimentFirestoreData(sentiment, forFieldValue);
  final nestedData = sentimentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = sentiment.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getSentimentFirestoreData(
  SentimentStruct? sentiment, [
  bool forFieldValue = false,
]) {
  if (sentiment == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(SentimentStruct.serializer, sentiment);

  // Add any Firestore field values
  sentiment.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSentimentListFirestoreData(
  List<SentimentStruct>? sentiments,
) =>
    sentiments?.map((s) => getSentimentFirestoreData(s, true)).toList() ?? [];
