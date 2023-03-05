// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedbacks_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbacksRecord> _$feedbacksRecordSerializer =
    new _$FeedbacksRecordSerializer();

class _$FeedbacksRecordSerializer
    implements StructuredSerializer<FeedbacksRecord> {
  @override
  final Iterable<Type> types = const [FeedbacksRecord, _$FeedbacksRecord];
  @override
  final String wireName = 'FeedbacksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FeedbacksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nlp;
    if (value != null) {
      result
        ..add('nlp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.item;
    if (value != null) {
      result
        ..add('item')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.submission;
    if (value != null) {
      result
        ..add('submission')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.analysis;
    if (value != null) {
      result
        ..add('analysis')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SentimentStruct)])));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FeedbacksRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbacksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nlp':
          result.nlp = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'item':
          result.item = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'submission':
          result.submission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'analysis':
          result.analysis.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SentimentStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedbacksRecord extends FeedbacksRecord {
  @override
  final DocumentReference<Object?>? nlp;
  @override
  final int? item;
  @override
  final String? submission;
  @override
  final String? owner;
  @override
  final BuiltList<SentimentStruct>? analysis;
  @override
  final DateTime? created;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FeedbacksRecord([void Function(FeedbacksRecordBuilder)? updates]) =>
      (new FeedbacksRecordBuilder()..update(updates))._build();

  _$FeedbacksRecord._(
      {this.nlp,
      this.item,
      this.submission,
      this.owner,
      this.analysis,
      this.created,
      this.ffRef})
      : super._();

  @override
  FeedbacksRecord rebuild(void Function(FeedbacksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbacksRecordBuilder toBuilder() =>
      new FeedbacksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbacksRecord &&
        nlp == other.nlp &&
        item == other.item &&
        submission == other.submission &&
        owner == other.owner &&
        analysis == other.analysis &&
        created == other.created &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nlp.hashCode), item.hashCode),
                        submission.hashCode),
                    owner.hashCode),
                analysis.hashCode),
            created.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedbacksRecord')
          ..add('nlp', nlp)
          ..add('item', item)
          ..add('submission', submission)
          ..add('owner', owner)
          ..add('analysis', analysis)
          ..add('created', created)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FeedbacksRecordBuilder
    implements Builder<FeedbacksRecord, FeedbacksRecordBuilder> {
  _$FeedbacksRecord? _$v;

  DocumentReference<Object?>? _nlp;
  DocumentReference<Object?>? get nlp => _$this._nlp;
  set nlp(DocumentReference<Object?>? nlp) => _$this._nlp = nlp;

  int? _item;
  int? get item => _$this._item;
  set item(int? item) => _$this._item = item;

  String? _submission;
  String? get submission => _$this._submission;
  set submission(String? submission) => _$this._submission = submission;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  ListBuilder<SentimentStruct>? _analysis;
  ListBuilder<SentimentStruct> get analysis =>
      _$this._analysis ??= new ListBuilder<SentimentStruct>();
  set analysis(ListBuilder<SentimentStruct>? analysis) =>
      _$this._analysis = analysis;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FeedbacksRecordBuilder() {
    FeedbacksRecord._initializeBuilder(this);
  }

  FeedbacksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nlp = $v.nlp;
      _item = $v.item;
      _submission = $v.submission;
      _owner = $v.owner;
      _analysis = $v.analysis?.toBuilder();
      _created = $v.created;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbacksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeedbacksRecord;
  }

  @override
  void update(void Function(FeedbacksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedbacksRecord build() => _build();

  _$FeedbacksRecord _build() {
    _$FeedbacksRecord _$result;
    try {
      _$result = _$v ??
          new _$FeedbacksRecord._(
              nlp: nlp,
              item: item,
              submission: submission,
              owner: owner,
              analysis: _analysis?.build(),
              created: created,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analysis';
        _analysis?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FeedbacksRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
