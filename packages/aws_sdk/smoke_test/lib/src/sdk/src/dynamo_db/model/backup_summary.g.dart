// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.backup_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupSummary extends BackupSummary {
  @override
  final String? tableName;
  @override
  final String? tableId;
  @override
  final String? tableArn;
  @override
  final String? backupArn;
  @override
  final String? backupName;
  @override
  final DateTime? backupCreationDateTime;
  @override
  final DateTime? backupExpiryDateTime;
  @override
  final _i2.BackupStatus? backupStatus;
  @override
  final _i3.BackupType? backupType;
  @override
  final _i4.Int64? backupSizeBytes;

  factory _$BackupSummary([void Function(BackupSummaryBuilder)? updates]) =>
      (new BackupSummaryBuilder()..update(updates))._build();

  _$BackupSummary._(
      {this.tableName,
      this.tableId,
      this.tableArn,
      this.backupArn,
      this.backupName,
      this.backupCreationDateTime,
      this.backupExpiryDateTime,
      this.backupStatus,
      this.backupType,
      this.backupSizeBytes})
      : super._();

  @override
  BackupSummary rebuild(void Function(BackupSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupSummaryBuilder toBuilder() => new BackupSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupSummary &&
        tableName == other.tableName &&
        tableId == other.tableId &&
        tableArn == other.tableArn &&
        backupArn == other.backupArn &&
        backupName == other.backupName &&
        backupCreationDateTime == other.backupCreationDateTime &&
        backupExpiryDateTime == other.backupExpiryDateTime &&
        backupStatus == other.backupStatus &&
        backupType == other.backupType &&
        backupSizeBytes == other.backupSizeBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, tableId.hashCode);
    _$hash = $jc(_$hash, tableArn.hashCode);
    _$hash = $jc(_$hash, backupArn.hashCode);
    _$hash = $jc(_$hash, backupName.hashCode);
    _$hash = $jc(_$hash, backupCreationDateTime.hashCode);
    _$hash = $jc(_$hash, backupExpiryDateTime.hashCode);
    _$hash = $jc(_$hash, backupStatus.hashCode);
    _$hash = $jc(_$hash, backupType.hashCode);
    _$hash = $jc(_$hash, backupSizeBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BackupSummaryBuilder
    implements Builder<BackupSummary, BackupSummaryBuilder> {
  _$BackupSummary? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  String? _backupArn;
  String? get backupArn => _$this._backupArn;
  set backupArn(String? backupArn) => _$this._backupArn = backupArn;

  String? _backupName;
  String? get backupName => _$this._backupName;
  set backupName(String? backupName) => _$this._backupName = backupName;

  DateTime? _backupCreationDateTime;
  DateTime? get backupCreationDateTime => _$this._backupCreationDateTime;
  set backupCreationDateTime(DateTime? backupCreationDateTime) =>
      _$this._backupCreationDateTime = backupCreationDateTime;

  DateTime? _backupExpiryDateTime;
  DateTime? get backupExpiryDateTime => _$this._backupExpiryDateTime;
  set backupExpiryDateTime(DateTime? backupExpiryDateTime) =>
      _$this._backupExpiryDateTime = backupExpiryDateTime;

  _i2.BackupStatus? _backupStatus;
  _i2.BackupStatus? get backupStatus => _$this._backupStatus;
  set backupStatus(_i2.BackupStatus? backupStatus) =>
      _$this._backupStatus = backupStatus;

  _i3.BackupType? _backupType;
  _i3.BackupType? get backupType => _$this._backupType;
  set backupType(_i3.BackupType? backupType) => _$this._backupType = backupType;

  _i4.Int64? _backupSizeBytes;
  _i4.Int64? get backupSizeBytes => _$this._backupSizeBytes;
  set backupSizeBytes(_i4.Int64? backupSizeBytes) =>
      _$this._backupSizeBytes = backupSizeBytes;

  BackupSummaryBuilder() {
    BackupSummary._init(this);
  }

  BackupSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _tableId = $v.tableId;
      _tableArn = $v.tableArn;
      _backupArn = $v.backupArn;
      _backupName = $v.backupName;
      _backupCreationDateTime = $v.backupCreationDateTime;
      _backupExpiryDateTime = $v.backupExpiryDateTime;
      _backupStatus = $v.backupStatus;
      _backupType = $v.backupType;
      _backupSizeBytes = $v.backupSizeBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BackupSummary;
  }

  @override
  void update(void Function(BackupSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupSummary build() => _build();

  _$BackupSummary _build() {
    final _$result = _$v ??
        new _$BackupSummary._(
            tableName: tableName,
            tableId: tableId,
            tableArn: tableArn,
            backupArn: backupArn,
            backupName: backupName,
            backupCreationDateTime: backupCreationDateTime,
            backupExpiryDateTime: backupExpiryDateTime,
            backupStatus: backupStatus,
            backupType: backupType,
            backupSizeBytes: backupSizeBytes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
