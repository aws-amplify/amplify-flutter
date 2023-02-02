// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.backup_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupDetails extends BackupDetails {
  @override
  final String backupArn;
  @override
  final DateTime backupCreationDateTime;
  @override
  final DateTime? backupExpiryDateTime;
  @override
  final String backupName;
  @override
  final _i2.Int64? backupSizeBytes;
  @override
  final _i3.BackupStatus backupStatus;
  @override
  final _i4.BackupType backupType;

  factory _$BackupDetails([void Function(BackupDetailsBuilder)? updates]) =>
      (new BackupDetailsBuilder()..update(updates))._build();

  _$BackupDetails._(
      {required this.backupArn,
      required this.backupCreationDateTime,
      this.backupExpiryDateTime,
      required this.backupName,
      this.backupSizeBytes,
      required this.backupStatus,
      required this.backupType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        backupArn, r'BackupDetails', 'backupArn');
    BuiltValueNullFieldError.checkNotNull(
        backupCreationDateTime, r'BackupDetails', 'backupCreationDateTime');
    BuiltValueNullFieldError.checkNotNull(
        backupName, r'BackupDetails', 'backupName');
    BuiltValueNullFieldError.checkNotNull(
        backupStatus, r'BackupDetails', 'backupStatus');
    BuiltValueNullFieldError.checkNotNull(
        backupType, r'BackupDetails', 'backupType');
  }

  @override
  BackupDetails rebuild(void Function(BackupDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupDetailsBuilder toBuilder() => new BackupDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupDetails &&
        backupArn == other.backupArn &&
        backupCreationDateTime == other.backupCreationDateTime &&
        backupExpiryDateTime == other.backupExpiryDateTime &&
        backupName == other.backupName &&
        backupSizeBytes == other.backupSizeBytes &&
        backupStatus == other.backupStatus &&
        backupType == other.backupType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backupArn.hashCode);
    _$hash = $jc(_$hash, backupCreationDateTime.hashCode);
    _$hash = $jc(_$hash, backupExpiryDateTime.hashCode);
    _$hash = $jc(_$hash, backupName.hashCode);
    _$hash = $jc(_$hash, backupSizeBytes.hashCode);
    _$hash = $jc(_$hash, backupStatus.hashCode);
    _$hash = $jc(_$hash, backupType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BackupDetailsBuilder
    implements Builder<BackupDetails, BackupDetailsBuilder> {
  _$BackupDetails? _$v;

  String? _backupArn;
  String? get backupArn => _$this._backupArn;
  set backupArn(String? backupArn) => _$this._backupArn = backupArn;

  DateTime? _backupCreationDateTime;
  DateTime? get backupCreationDateTime => _$this._backupCreationDateTime;
  set backupCreationDateTime(DateTime? backupCreationDateTime) =>
      _$this._backupCreationDateTime = backupCreationDateTime;

  DateTime? _backupExpiryDateTime;
  DateTime? get backupExpiryDateTime => _$this._backupExpiryDateTime;
  set backupExpiryDateTime(DateTime? backupExpiryDateTime) =>
      _$this._backupExpiryDateTime = backupExpiryDateTime;

  String? _backupName;
  String? get backupName => _$this._backupName;
  set backupName(String? backupName) => _$this._backupName = backupName;

  _i2.Int64? _backupSizeBytes;
  _i2.Int64? get backupSizeBytes => _$this._backupSizeBytes;
  set backupSizeBytes(_i2.Int64? backupSizeBytes) =>
      _$this._backupSizeBytes = backupSizeBytes;

  _i3.BackupStatus? _backupStatus;
  _i3.BackupStatus? get backupStatus => _$this._backupStatus;
  set backupStatus(_i3.BackupStatus? backupStatus) =>
      _$this._backupStatus = backupStatus;

  _i4.BackupType? _backupType;
  _i4.BackupType? get backupType => _$this._backupType;
  set backupType(_i4.BackupType? backupType) => _$this._backupType = backupType;

  BackupDetailsBuilder() {
    BackupDetails._init(this);
  }

  BackupDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupArn = $v.backupArn;
      _backupCreationDateTime = $v.backupCreationDateTime;
      _backupExpiryDateTime = $v.backupExpiryDateTime;
      _backupName = $v.backupName;
      _backupSizeBytes = $v.backupSizeBytes;
      _backupStatus = $v.backupStatus;
      _backupType = $v.backupType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BackupDetails;
  }

  @override
  void update(void Function(BackupDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupDetails build() => _build();

  _$BackupDetails _build() {
    final _$result = _$v ??
        new _$BackupDetails._(
            backupArn: BuiltValueNullFieldError.checkNotNull(
                backupArn, r'BackupDetails', 'backupArn'),
            backupCreationDateTime: BuiltValueNullFieldError.checkNotNull(
                backupCreationDateTime,
                r'BackupDetails',
                'backupCreationDateTime'),
            backupExpiryDateTime: backupExpiryDateTime,
            backupName: BuiltValueNullFieldError.checkNotNull(
                backupName, r'BackupDetails', 'backupName'),
            backupSizeBytes: backupSizeBytes,
            backupStatus: BuiltValueNullFieldError.checkNotNull(
                backupStatus, r'BackupDetails', 'backupStatus'),
            backupType: BuiltValueNullFieldError.checkNotNull(
                backupType, r'BackupDetails', 'backupType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
