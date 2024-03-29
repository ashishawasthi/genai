// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extracts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExtractsRecord> _$extractsRecordSerializer =
    new _$ExtractsRecordSerializer();

class _$ExtractsRecordSerializer
    implements StructuredSerializer<ExtractsRecord> {
  @override
  final Iterable<Type> types = const [ExtractsRecord, _$ExtractsRecord];
  @override
  final String wireName = 'ExtractsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ExtractsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clean;
    if (value != null) {
      result
        ..add('clean')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nlpRef;
    if (value != null) {
      result
        ..add('nlpRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.fetched;
    if (value != null) {
      result
        ..add('fetched')
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
    value = object.updated;
    if (value != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facts;
    if (value != null) {
      result
        ..add('facts')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.words;
    if (value != null) {
      result
        ..add('words')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cached;
    if (value != null) {
      result
        ..add('cached')
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
  ExtractsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExtractsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'clean':
          result.clean = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nlpRef':
          result.nlpRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'fetched':
          result.fetched = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'facts':
          result.facts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'response':
          result.response = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'words':
          result.words = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cached':
          result.cached = serializers.deserialize(value,
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

class _$ExtractsRecord extends ExtractsRecord {
  @override
  final String? url;
  @override
  final String? clean;
  @override
  final DocumentReference<Object?>? nlpRef;
  @override
  final bool? fetched;
  @override
  final String? owner;
  @override
  final DateTime? updated;
  @override
  final String? summary;
  @override
  final BuiltList<String>? facts;
  @override
  final String? response;
  @override
  final int? words;
  @override
  final bool? cached;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ExtractsRecord([void Function(ExtractsRecordBuilder)? updates]) =>
      (new ExtractsRecordBuilder()..update(updates))._build();

  _$ExtractsRecord._(
      {this.url,
      this.clean,
      this.nlpRef,
      this.fetched,
      this.owner,
      this.updated,
      this.summary,
      this.facts,
      this.response,
      this.words,
      this.cached,
      this.ffRef})
      : super._();

  @override
  ExtractsRecord rebuild(void Function(ExtractsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtractsRecordBuilder toBuilder() =>
      new ExtractsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtractsRecord &&
        url == other.url &&
        clean == other.clean &&
        nlpRef == other.nlpRef &&
        fetched == other.fetched &&
        owner == other.owner &&
        updated == other.updated &&
        summary == other.summary &&
        facts == other.facts &&
        response == other.response &&
        words == other.words &&
        cached == other.cached &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, clean.hashCode);
    _$hash = $jc(_$hash, nlpRef.hashCode);
    _$hash = $jc(_$hash, fetched.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, facts.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, words.hashCode);
    _$hash = $jc(_$hash, cached.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExtractsRecord')
          ..add('url', url)
          ..add('clean', clean)
          ..add('nlpRef', nlpRef)
          ..add('fetched', fetched)
          ..add('owner', owner)
          ..add('updated', updated)
          ..add('summary', summary)
          ..add('facts', facts)
          ..add('response', response)
          ..add('words', words)
          ..add('cached', cached)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ExtractsRecordBuilder
    implements Builder<ExtractsRecord, ExtractsRecordBuilder> {
  _$ExtractsRecord? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _clean;
  String? get clean => _$this._clean;
  set clean(String? clean) => _$this._clean = clean;

  DocumentReference<Object?>? _nlpRef;
  DocumentReference<Object?>? get nlpRef => _$this._nlpRef;
  set nlpRef(DocumentReference<Object?>? nlpRef) => _$this._nlpRef = nlpRef;

  bool? _fetched;
  bool? get fetched => _$this._fetched;
  set fetched(bool? fetched) => _$this._fetched = fetched;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  DateTime? _updated;
  DateTime? get updated => _$this._updated;
  set updated(DateTime? updated) => _$this._updated = updated;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  ListBuilder<String>? _facts;
  ListBuilder<String> get facts => _$this._facts ??= new ListBuilder<String>();
  set facts(ListBuilder<String>? facts) => _$this._facts = facts;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  int? _words;
  int? get words => _$this._words;
  set words(int? words) => _$this._words = words;

  bool? _cached;
  bool? get cached => _$this._cached;
  set cached(bool? cached) => _$this._cached = cached;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ExtractsRecordBuilder() {
    ExtractsRecord._initializeBuilder(this);
  }

  ExtractsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _clean = $v.clean;
      _nlpRef = $v.nlpRef;
      _fetched = $v.fetched;
      _owner = $v.owner;
      _updated = $v.updated;
      _summary = $v.summary;
      _facts = $v.facts?.toBuilder();
      _response = $v.response;
      _words = $v.words;
      _cached = $v.cached;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtractsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExtractsRecord;
  }

  @override
  void update(void Function(ExtractsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExtractsRecord build() => _build();

  _$ExtractsRecord _build() {
    _$ExtractsRecord _$result;
    try {
      _$result = _$v ??
          new _$ExtractsRecord._(
              url: url,
              clean: clean,
              nlpRef: nlpRef,
              fetched: fetched,
              owner: owner,
              updated: updated,
              summary: summary,
              facts: _facts?.build(),
              response: response,
              words: words,
              cached: cached,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'facts';
        _facts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExtractsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
