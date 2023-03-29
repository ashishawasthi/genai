// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentsRecord> _$contentsRecordSerializer =
    new _$ContentsRecordSerializer();

class _$ContentsRecordSerializer
    implements StructuredSerializer<ContentsRecord> {
  @override
  final Iterable<Type> types = const [ContentsRecord, _$ContentsRecord];
  @override
  final String wireName = 'ContentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ContentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.employmentStatus;
    if (value != null) {
      result
        ..add('employment_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minimumAge;
    if (value != null) {
      result
        ..add('minimum_age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maximumAge;
    if (value != null) {
      result
        ..add('maximum_age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subject;
    if (value != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.submission;
    if (value != null) {
      result
        ..add('submission')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
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
  ContentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'employment_status':
          result.employmentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minimum_age':
          result.minimumAge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'maximum_age':
          result.maximumAge = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'submission':
          result.submission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
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

class _$ContentsRecord extends ContentsRecord {
  @override
  final String? gender;
  @override
  final String? employmentStatus;
  @override
  final int? minimumAge;
  @override
  final int? maximumAge;
  @override
  final String? subject;
  @override
  final String? body;
  @override
  final String? submission;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ContentsRecord([void Function(ContentsRecordBuilder)? updates]) =>
      (new ContentsRecordBuilder()..update(updates))._build();

  _$ContentsRecord._(
      {this.gender,
      this.employmentStatus,
      this.minimumAge,
      this.maximumAge,
      this.subject,
      this.body,
      this.submission,
      this.createdTime,
      this.ffRef})
      : super._();

  @override
  ContentsRecord rebuild(void Function(ContentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentsRecordBuilder toBuilder() =>
      new ContentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentsRecord &&
        gender == other.gender &&
        employmentStatus == other.employmentStatus &&
        minimumAge == other.minimumAge &&
        maximumAge == other.maximumAge &&
        subject == other.subject &&
        body == other.body &&
        submission == other.submission &&
        createdTime == other.createdTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, employmentStatus.hashCode);
    _$hash = $jc(_$hash, minimumAge.hashCode);
    _$hash = $jc(_$hash, maximumAge.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, submission.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContentsRecord')
          ..add('gender', gender)
          ..add('employmentStatus', employmentStatus)
          ..add('minimumAge', minimumAge)
          ..add('maximumAge', maximumAge)
          ..add('subject', subject)
          ..add('body', body)
          ..add('submission', submission)
          ..add('createdTime', createdTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ContentsRecordBuilder
    implements Builder<ContentsRecord, ContentsRecordBuilder> {
  _$ContentsRecord? _$v;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _employmentStatus;
  String? get employmentStatus => _$this._employmentStatus;
  set employmentStatus(String? employmentStatus) =>
      _$this._employmentStatus = employmentStatus;

  int? _minimumAge;
  int? get minimumAge => _$this._minimumAge;
  set minimumAge(int? minimumAge) => _$this._minimumAge = minimumAge;

  int? _maximumAge;
  int? get maximumAge => _$this._maximumAge;
  set maximumAge(int? maximumAge) => _$this._maximumAge = maximumAge;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _submission;
  String? get submission => _$this._submission;
  set submission(String? submission) => _$this._submission = submission;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ContentsRecordBuilder() {
    ContentsRecord._initializeBuilder(this);
  }

  ContentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gender = $v.gender;
      _employmentStatus = $v.employmentStatus;
      _minimumAge = $v.minimumAge;
      _maximumAge = $v.maximumAge;
      _subject = $v.subject;
      _body = $v.body;
      _submission = $v.submission;
      _createdTime = $v.createdTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContentsRecord;
  }

  @override
  void update(void Function(ContentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContentsRecord build() => _build();

  _$ContentsRecord _build() {
    final _$result = _$v ??
        new _$ContentsRecord._(
            gender: gender,
            employmentStatus: employmentStatus,
            minimumAge: minimumAge,
            maximumAge: maximumAge,
            subject: subject,
            body: body,
            submission: submission,
            createdTime: createdTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
