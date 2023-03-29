// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentiment_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SentimentStruct> _$sentimentStructSerializer =
    new _$SentimentStructSerializer();

class _$SentimentStructSerializer
    implements StructuredSerializer<SentimentStruct> {
  @override
  final Iterable<Type> types = const [SentimentStruct, _$SentimentStruct];
  @override
  final String wireName = 'SentimentStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, SentimentStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.topic;
    if (value != null) {
      result
        ..add('topic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sentiment;
    if (value != null) {
      result
        ..add('sentiment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  SentimentStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SentimentStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'topic':
          result.topic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sentiment':
          result.sentiment = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$SentimentStruct extends SentimentStruct {
  @override
  final String? topic;
  @override
  final double? sentiment;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$SentimentStruct([void Function(SentimentStructBuilder)? updates]) =>
      (new SentimentStructBuilder()..update(updates))._build();

  _$SentimentStruct._(
      {this.topic, this.sentiment, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'SentimentStruct', 'firestoreUtilData');
  }

  @override
  SentimentStruct rebuild(void Function(SentimentStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SentimentStructBuilder toBuilder() =>
      new SentimentStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SentimentStruct &&
        topic == other.topic &&
        sentiment == other.sentiment &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, sentiment.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SentimentStruct')
          ..add('topic', topic)
          ..add('sentiment', sentiment)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class SentimentStructBuilder
    implements Builder<SentimentStruct, SentimentStructBuilder> {
  _$SentimentStruct? _$v;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  double? _sentiment;
  double? get sentiment => _$this._sentiment;
  set sentiment(double? sentiment) => _$this._sentiment = sentiment;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  SentimentStructBuilder() {
    SentimentStruct._initializeBuilder(this);
  }

  SentimentStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topic = $v.topic;
      _sentiment = $v.sentiment;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SentimentStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SentimentStruct;
  }

  @override
  void update(void Function(SentimentStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SentimentStruct build() => _build();

  _$SentimentStruct _build() {
    final _$result = _$v ??
        new _$SentimentStruct._(
            topic: topic,
            sentiment: sentiment,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'SentimentStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
