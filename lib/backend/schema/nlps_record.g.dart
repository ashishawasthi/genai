// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NlpsRecord> _$nlpsRecordSerializer = new _$NlpsRecordSerializer();

class _$NlpsRecordSerializer implements StructuredSerializer<NlpsRecord> {
  @override
  final Iterable<Type> types = const [NlpsRecord, _$NlpsRecord];
  @override
  final String wireName = 'NlpsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NlpsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.feedback;
    if (value != null) {
      result
        ..add('feedback')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.request;
    if (value != null) {
      result
        ..add('request')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updated;
    if (value != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.feedbacks;
    if (value != null) {
      result
        ..add('feedbacks')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  NlpsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NlpsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'feedback':
          result.feedback = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'response':
          result.response = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'feedbacks':
          result.feedbacks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$NlpsRecord extends NlpsRecord {
  @override
  final bool? feedback;
  @override
  final String? owner;
  @override
  final String? request;
  @override
  final DateTime? created;
  @override
  final String? response;
  @override
  final DateTime? updated;
  @override
  final BuiltList<String>? feedbacks;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NlpsRecord([void Function(NlpsRecordBuilder)? updates]) =>
      (new NlpsRecordBuilder()..update(updates))._build();

  _$NlpsRecord._(
      {this.feedback,
      this.owner,
      this.request,
      this.created,
      this.response,
      this.updated,
      this.feedbacks,
      this.ffRef})
      : super._();

  @override
  NlpsRecord rebuild(void Function(NlpsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpsRecordBuilder toBuilder() => new NlpsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpsRecord &&
        feedback == other.feedback &&
        owner == other.owner &&
        request == other.request &&
        created == other.created &&
        response == other.response &&
        updated == other.updated &&
        feedbacks == other.feedbacks &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, feedback.hashCode), owner.hashCode),
                            request.hashCode),
                        created.hashCode),
                    response.hashCode),
                updated.hashCode),
            feedbacks.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpsRecord')
          ..add('feedback', feedback)
          ..add('owner', owner)
          ..add('request', request)
          ..add('created', created)
          ..add('response', response)
          ..add('updated', updated)
          ..add('feedbacks', feedbacks)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NlpsRecordBuilder implements Builder<NlpsRecord, NlpsRecordBuilder> {
  _$NlpsRecord? _$v;

  bool? _feedback;
  bool? get feedback => _$this._feedback;
  set feedback(bool? feedback) => _$this._feedback = feedback;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  DateTime? _updated;
  DateTime? get updated => _$this._updated;
  set updated(DateTime? updated) => _$this._updated = updated;

  ListBuilder<String>? _feedbacks;
  ListBuilder<String> get feedbacks =>
      _$this._feedbacks ??= new ListBuilder<String>();
  set feedbacks(ListBuilder<String>? feedbacks) =>
      _$this._feedbacks = feedbacks;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NlpsRecordBuilder() {
    NlpsRecord._initializeBuilder(this);
  }

  NlpsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feedback = $v.feedback;
      _owner = $v.owner;
      _request = $v.request;
      _created = $v.created;
      _response = $v.response;
      _updated = $v.updated;
      _feedbacks = $v.feedbacks?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpsRecord;
  }

  @override
  void update(void Function(NlpsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpsRecord build() => _build();

  _$NlpsRecord _build() {
    _$NlpsRecord _$result;
    try {
      _$result = _$v ??
          new _$NlpsRecord._(
              feedback: feedback,
              owner: owner,
              request: request,
              created: created,
              response: response,
              updated: updated,
              feedbacks: _feedbacks?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'feedbacks';
        _feedbacks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NlpsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
