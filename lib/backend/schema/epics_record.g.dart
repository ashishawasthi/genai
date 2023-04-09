// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epics_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EpicsRecord> _$epicsRecordSerializer = new _$EpicsRecordSerializer();

class _$EpicsRecordSerializer implements StructuredSerializer<EpicsRecord> {
  @override
  final Iterable<Type> types = const [EpicsRecord, _$EpicsRecord];
  @override
  final String wireName = 'EpicsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EpicsRecord object,
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
    value = object.cached;
    if (value != null) {
      result
        ..add('cached')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.requirement;
    if (value != null) {
      result
        ..add('requirement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.testScenarios;
    if (value != null) {
      result
        ..add('testScenarios')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.processScenarios;
    if (value != null) {
      result
        ..add('processScenarios')
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
  EpicsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EpicsRecordBuilder();

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
        case 'cached':
          result.cached = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'requirement':
          result.requirement = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'response':
          result.response = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'testScenarios':
          result.testScenarios = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'processScenarios':
          result.processScenarios = serializers.deserialize(value,
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

class _$EpicsRecord extends EpicsRecord {
  @override
  final String? owner;
  @override
  final bool? cached;
  @override
  final String? requirement;
  @override
  final String? response;
  @override
  final String? testScenarios;
  @override
  final bool? processScenarios;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EpicsRecord([void Function(EpicsRecordBuilder)? updates]) =>
      (new EpicsRecordBuilder()..update(updates))._build();

  _$EpicsRecord._(
      {this.owner,
      this.cached,
      this.requirement,
      this.response,
      this.testScenarios,
      this.processScenarios,
      this.ffRef})
      : super._();

  @override
  EpicsRecord rebuild(void Function(EpicsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpicsRecordBuilder toBuilder() => new EpicsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EpicsRecord &&
        owner == other.owner &&
        cached == other.cached &&
        requirement == other.requirement &&
        response == other.response &&
        testScenarios == other.testScenarios &&
        processScenarios == other.processScenarios &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, cached.hashCode);
    _$hash = $jc(_$hash, requirement.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, testScenarios.hashCode);
    _$hash = $jc(_$hash, processScenarios.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EpicsRecord')
          ..add('owner', owner)
          ..add('cached', cached)
          ..add('requirement', requirement)
          ..add('response', response)
          ..add('testScenarios', testScenarios)
          ..add('processScenarios', processScenarios)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EpicsRecordBuilder implements Builder<EpicsRecord, EpicsRecordBuilder> {
  _$EpicsRecord? _$v;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  bool? _cached;
  bool? get cached => _$this._cached;
  set cached(bool? cached) => _$this._cached = cached;

  String? _requirement;
  String? get requirement => _$this._requirement;
  set requirement(String? requirement) => _$this._requirement = requirement;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  String? _testScenarios;
  String? get testScenarios => _$this._testScenarios;
  set testScenarios(String? testScenarios) =>
      _$this._testScenarios = testScenarios;

  bool? _processScenarios;
  bool? get processScenarios => _$this._processScenarios;
  set processScenarios(bool? processScenarios) =>
      _$this._processScenarios = processScenarios;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EpicsRecordBuilder() {
    EpicsRecord._initializeBuilder(this);
  }

  EpicsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _cached = $v.cached;
      _requirement = $v.requirement;
      _response = $v.response;
      _testScenarios = $v.testScenarios;
      _processScenarios = $v.processScenarios;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EpicsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EpicsRecord;
  }

  @override
  void update(void Function(EpicsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EpicsRecord build() => _build();

  _$EpicsRecord _build() {
    final _$result = _$v ??
        new _$EpicsRecord._(
            owner: owner,
            cached: cached,
            requirement: requirement,
            response: response,
            testScenarios: testScenarios,
            processScenarios: processScenarios,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
