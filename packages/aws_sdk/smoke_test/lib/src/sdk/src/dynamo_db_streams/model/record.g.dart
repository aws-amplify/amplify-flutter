// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.record;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Record extends Record {
  @override
  final String? awsRegion;
  @override
  final _i2.StreamRecord? dynamodb;
  @override
  final String? eventId;
  @override
  final _i3.OperationType? eventName;
  @override
  final String? eventSource;
  @override
  final String? eventVersion;
  @override
  final _i4.Identity? userIdentity;

  factory _$Record([void Function(RecordBuilder)? updates]) =>
      (new RecordBuilder()..update(updates))._build();

  _$Record._(
      {this.awsRegion,
      this.dynamodb,
      this.eventId,
      this.eventName,
      this.eventSource,
      this.eventVersion,
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
        awsRegion == other.awsRegion &&
        dynamodb == other.dynamodb &&
        eventId == other.eventId &&
        eventName == other.eventName &&
        eventSource == other.eventSource &&
        eventVersion == other.eventVersion &&
        userIdentity == other.userIdentity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, awsRegion.hashCode), dynamodb.hashCode),
                        eventId.hashCode),
                    eventName.hashCode),
                eventSource.hashCode),
            eventVersion.hashCode),
        userIdentity.hashCode));
  }
}

class RecordBuilder implements Builder<Record, RecordBuilder> {
  _$Record? _$v;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  _i2.StreamRecordBuilder? _dynamodb;
  _i2.StreamRecordBuilder get dynamodb =>
      _$this._dynamodb ??= new _i2.StreamRecordBuilder();
  set dynamodb(_i2.StreamRecordBuilder? dynamodb) =>
      _$this._dynamodb = dynamodb;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  _i3.OperationType? _eventName;
  _i3.OperationType? get eventName => _$this._eventName;
  set eventName(_i3.OperationType? eventName) => _$this._eventName = eventName;

  String? _eventSource;
  String? get eventSource => _$this._eventSource;
  set eventSource(String? eventSource) => _$this._eventSource = eventSource;

  String? _eventVersion;
  String? get eventVersion => _$this._eventVersion;
  set eventVersion(String? eventVersion) => _$this._eventVersion = eventVersion;

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
      _awsRegion = $v.awsRegion;
      _dynamodb = $v.dynamodb?.toBuilder();
      _eventId = $v.eventId;
      _eventName = $v.eventName;
      _eventSource = $v.eventSource;
      _eventVersion = $v.eventVersion;
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
              awsRegion: awsRegion,
              dynamodb: _dynamodb?.build(),
              eventId: eventId,
              eventName: eventName,
              eventSource: eventSource,
              eventVersion: eventVersion,
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
