// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Record extends Record {
  @override
  final String? eventId;
  @override
  final OperationType? eventName;
  @override
  final String? eventVersion;
  @override
  final String? eventSource;
  @override
  final String? awsRegion;
  @override
  final StreamRecord? dynamodb;
  @override
  final Identity? userIdentity;

  factory _$Record([void Function(RecordBuilder)? updates]) =>
      (new RecordBuilder()..update(updates))._build();

  _$Record._(
      {this.eventId,
      this.eventName,
      this.eventVersion,
      this.eventSource,
      this.awsRegion,
      this.dynamodb,
      this.userIdentity})
      : super._();

  @override
  Record rebuild(void Function(RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordBuilder toBuilder() => new RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Record &&
        eventId == other.eventId &&
        eventName == other.eventName &&
        eventVersion == other.eventVersion &&
        eventSource == other.eventSource &&
        awsRegion == other.awsRegion &&
        dynamodb == other.dynamodb &&
        userIdentity == other.userIdentity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, eventName.hashCode);
    _$hash = $jc(_$hash, eventVersion.hashCode);
    _$hash = $jc(_$hash, eventSource.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, dynamodb.hashCode);
    _$hash = $jc(_$hash, userIdentity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecordBuilder implements Builder<Record, RecordBuilder> {
  _$Record? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  OperationType? _eventName;
  OperationType? get eventName => _$this._eventName;
  set eventName(OperationType? eventName) => _$this._eventName = eventName;

  String? _eventVersion;
  String? get eventVersion => _$this._eventVersion;
  set eventVersion(String? eventVersion) => _$this._eventVersion = eventVersion;

  String? _eventSource;
  String? get eventSource => _$this._eventSource;
  set eventSource(String? eventSource) => _$this._eventSource = eventSource;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  StreamRecordBuilder? _dynamodb;
  StreamRecordBuilder get dynamodb =>
      _$this._dynamodb ??= new StreamRecordBuilder();
  set dynamodb(StreamRecordBuilder? dynamodb) => _$this._dynamodb = dynamodb;

  IdentityBuilder? _userIdentity;
  IdentityBuilder get userIdentity =>
      _$this._userIdentity ??= new IdentityBuilder();
  set userIdentity(IdentityBuilder? userIdentity) =>
      _$this._userIdentity = userIdentity;

  RecordBuilder();

  RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _eventName = $v.eventName;
      _eventVersion = $v.eventVersion;
      _eventSource = $v.eventSource;
      _awsRegion = $v.awsRegion;
      _dynamodb = $v.dynamodb?.toBuilder();
      _userIdentity = $v.userIdentity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Record;
  }

  @override
  void update(void Function(RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Record build() => _build();

  _$Record _build() {
    _$Record _$result;
    try {
      _$result = _$v ??
          new _$Record._(
              eventId: eventId,
              eventName: eventName,
              eventVersion: eventVersion,
              eventSource: eventSource,
              awsRegion: awsRegion,
              dynamodb: _dynamodb?.build(),
              userIdentity: _userIdentity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dynamodb';
        _dynamodb?.build();
        _$failedField = 'userIdentity';
        _userIdentity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Record', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
