// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatsRecord> _$chatsRecordSerializer = new _$ChatsRecordSerializer();

class _$ChatsRecordSerializer implements StructuredSerializer<ChatsRecord> {
  @override
  final Iterable<Type> types = const [ChatsRecord, _$ChatsRecord];
  @override
  final String wireName = 'ChatsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatsRecord object,
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
    value = object.conversation;
    if (value != null) {
      result
        ..add('conversation')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.processed;
    if (value != null) {
      result
        ..add('processed')
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
  ChatsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatsRecordBuilder();

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
        case 'conversation':
          result.conversation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'processed':
          result.processed = serializers.deserialize(value,
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

class _$ChatsRecord extends ChatsRecord {
  @override
  final String? owner;
  @override
  final BuiltList<String>? conversation;
  @override
  final bool? processed;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatsRecord([void Function(ChatsRecordBuilder)? updates]) =>
      (new ChatsRecordBuilder()..update(updates))._build();

  _$ChatsRecord._({this.owner, this.conversation, this.processed, this.ffRef})
      : super._();

  @override
  ChatsRecord rebuild(void Function(ChatsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatsRecordBuilder toBuilder() => new ChatsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatsRecord &&
        owner == other.owner &&
        conversation == other.conversation &&
        processed == other.processed &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, conversation.hashCode);
    _$hash = $jc(_$hash, processed.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatsRecord')
          ..add('owner', owner)
          ..add('conversation', conversation)
          ..add('processed', processed)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatsRecordBuilder implements Builder<ChatsRecord, ChatsRecordBuilder> {
  _$ChatsRecord? _$v;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  ListBuilder<String>? _conversation;
  ListBuilder<String> get conversation =>
      _$this._conversation ??= new ListBuilder<String>();
  set conversation(ListBuilder<String>? conversation) =>
      _$this._conversation = conversation;

  bool? _processed;
  bool? get processed => _$this._processed;
  set processed(bool? processed) => _$this._processed = processed;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatsRecordBuilder() {
    ChatsRecord._initializeBuilder(this);
  }

  ChatsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _conversation = $v.conversation?.toBuilder();
      _processed = $v.processed;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatsRecord;
  }

  @override
  void update(void Function(ChatsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatsRecord build() => _build();

  _$ChatsRecord _build() {
    _$ChatsRecord _$result;
    try {
      _$result = _$v ??
          new _$ChatsRecord._(
              owner: owner,
              conversation: _conversation?.build(),
              processed: processed,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversation';
        _conversation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
