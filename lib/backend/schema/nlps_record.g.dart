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
    value = object.chached;
    if (value != null) {
      result
        ..add('chached')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.successful;
    if (value != null) {
      result
        ..add('successful')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.system;
    if (value != null) {
      result
        ..add('system')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age18to25;
    if (value != null) {
      result
        ..add('age18to25')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.age25to35;
    if (value != null) {
      result
        ..add('age25to35')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.age35to50;
    if (value != null) {
      result
        ..add('age35to50')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.age50to65;
    if (value != null) {
      result
        ..add('age50to65')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.age65to80;
    if (value != null) {
      result
        ..add('age65to80')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
        case 'chached':
          result.chached = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'successful':
          result.successful = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'system':
          result.system = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'age18to25':
          result.age18to25 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'age25to35':
          result.age25to35 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'age35to50':
          result.age35to50 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'age50to65':
          result.age50to65 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'age65to80':
          result.age65to80 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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
  final bool? chached;
  @override
  final bool? successful;
  @override
  final String? type;
  @override
  final String? system;
  @override
  final String? content;
  @override
  final bool? age18to25;
  @override
  final bool? age25to35;
  @override
  final bool? age35to50;
  @override
  final bool? age50to65;
  @override
  final bool? age65to80;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NlpsRecord([void Function(NlpsRecordBuilder)? updates]) =>
      (new NlpsRecordBuilder()..update(updates))._build();

  _$NlpsRecord._(
      {this.owner,
      this.request,
      this.created,
      this.response,
      this.updated,
      this.feedbacks,
      this.chached,
      this.successful,
      this.type,
      this.system,
      this.content,
      this.age18to25,
      this.age25to35,
      this.age35to50,
      this.age50to65,
      this.age65to80,
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
        owner == other.owner &&
        request == other.request &&
        created == other.created &&
        response == other.response &&
        updated == other.updated &&
        feedbacks == other.feedbacks &&
        chached == other.chached &&
        successful == other.successful &&
        type == other.type &&
        system == other.system &&
        content == other.content &&
        age18to25 == other.age18to25 &&
        age25to35 == other.age25to35 &&
        age35to50 == other.age35to50 &&
        age50to65 == other.age50to65 &&
        age65to80 == other.age65to80 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        owner
                                                                            .hashCode),
                                                                    request
                                                                        .hashCode),
                                                                created
                                                                    .hashCode),
                                                            response.hashCode),
                                                        updated.hashCode),
                                                    feedbacks.hashCode),
                                                chached.hashCode),
                                            successful.hashCode),
                                        type.hashCode),
                                    system.hashCode),
                                content.hashCode),
                            age18to25.hashCode),
                        age25to35.hashCode),
                    age35to50.hashCode),
                age50to65.hashCode),
            age65to80.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpsRecord')
          ..add('owner', owner)
          ..add('request', request)
          ..add('created', created)
          ..add('response', response)
          ..add('updated', updated)
          ..add('feedbacks', feedbacks)
          ..add('chached', chached)
          ..add('successful', successful)
          ..add('type', type)
          ..add('system', system)
          ..add('content', content)
          ..add('age18to25', age18to25)
          ..add('age25to35', age25to35)
          ..add('age35to50', age35to50)
          ..add('age50to65', age50to65)
          ..add('age65to80', age65to80)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NlpsRecordBuilder implements Builder<NlpsRecord, NlpsRecordBuilder> {
  _$NlpsRecord? _$v;

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

  bool? _chached;
  bool? get chached => _$this._chached;
  set chached(bool? chached) => _$this._chached = chached;

  bool? _successful;
  bool? get successful => _$this._successful;
  set successful(bool? successful) => _$this._successful = successful;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _system;
  String? get system => _$this._system;
  set system(String? system) => _$this._system = system;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  bool? _age18to25;
  bool? get age18to25 => _$this._age18to25;
  set age18to25(bool? age18to25) => _$this._age18to25 = age18to25;

  bool? _age25to35;
  bool? get age25to35 => _$this._age25to35;
  set age25to35(bool? age25to35) => _$this._age25to35 = age25to35;

  bool? _age35to50;
  bool? get age35to50 => _$this._age35to50;
  set age35to50(bool? age35to50) => _$this._age35to50 = age35to50;

  bool? _age50to65;
  bool? get age50to65 => _$this._age50to65;
  set age50to65(bool? age50to65) => _$this._age50to65 = age50to65;

  bool? _age65to80;
  bool? get age65to80 => _$this._age65to80;
  set age65to80(bool? age65to80) => _$this._age65to80 = age65to80;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NlpsRecordBuilder() {
    NlpsRecord._initializeBuilder(this);
  }

  NlpsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _request = $v.request;
      _created = $v.created;
      _response = $v.response;
      _updated = $v.updated;
      _feedbacks = $v.feedbacks?.toBuilder();
      _chached = $v.chached;
      _successful = $v.successful;
      _type = $v.type;
      _system = $v.system;
      _content = $v.content;
      _age18to25 = $v.age18to25;
      _age25to35 = $v.age25to35;
      _age35to50 = $v.age35to50;
      _age50to65 = $v.age50to65;
      _age65to80 = $v.age65to80;
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
              owner: owner,
              request: request,
              created: created,
              response: response,
              updated: updated,
              feedbacks: _feedbacks?.build(),
              chached: chached,
              successful: successful,
              type: type,
              system: system,
              content: content,
              age18to25: age18to25,
              age25to35: age25to35,
              age35to50: age35to50,
              age50to65: age50to65,
              age65to80: age65to80,
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
