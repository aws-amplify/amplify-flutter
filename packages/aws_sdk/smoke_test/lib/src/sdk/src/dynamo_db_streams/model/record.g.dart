// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.record;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Record extends Record {
  @override
  final String? eventId;
  @override
  final _i2.OperationType? eventName;
  @override
  final String? eventVersion;
  @override
  final String? eventSource;
  @override
  final String? awsRegion;
  @override
  final _i3.StreamRecord? dynamodb;
  @override
  final _i4.Identity? userIdentity;

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

  _i2.OperationType? _eventName;
  _i2.OperationType? get eventName => _$this._eventName;
  set eventName(_i2.OperationType? eventName) => _$this._eventName = eventName;

  String? _eventVersion;
  String? get eventVersion => _$this._eventVersion;
  set eventVersion(String? eventVersion) => _$this._eventVersion = eventVersion;

  String? _eventSource;
  String? get eventSource => _$this._eventSource;
  set eventSource(String? eventSource) => _$this._eventSource = eventSource;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  _i3.StreamRecordBuilder? _dynamodb;
  _i3.StreamRecordBuilder get dynamodb =>
      _$this._dynamodb ??= new _i3.StreamRecordBuilder();
  set dynamodb(_i3.StreamRecordBuilder? dynamodb) =>
      _$this._dynamodb = dynamodb;

  _i4.IdentityBuilder? _userIdentity;
  _i4.IdentityBuilder get userIdentity =>
      _$this._userIdentity ??= new _i4.IdentityBuilder();
  set userIdentity(_i4.IdentityBuilder? userIdentity) =>
      _$this._userIdentity = userIdentity;

  RecordBuilder() {
    Record._init(this);
  }

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
