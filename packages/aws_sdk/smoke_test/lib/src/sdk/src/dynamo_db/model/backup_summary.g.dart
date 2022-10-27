// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.backup_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupSummary extends BackupSummary {
  @override
  final String? backupArn;
  @override
  final DateTime? backupCreationDateTime;
  @override
  final DateTime? backupExpiryDateTime;
  @override
  final String? backupName;
  @override
  final _i2.Int64? backupSizeBytes;
  @override
  final _i3.BackupStatus? backupStatus;
  @override
  final _i4.BackupType? backupType;
  @override
  final String? tableArn;
  @override
  final String? tableId;
  @override
  final String? tableName;

  factory _$BackupSummary([void Function(BackupSummaryBuilder)? updates]) =>
      (new BackupSummaryBuilder()..update(updates))._build();

  _$BackupSummary._(
      {this.backupArn,
      this.backupCreationDateTime,
      this.backupExpiryDateTime,
      this.backupName,
      this.backupSizeBytes,
      this.backupStatus,
      this.backupType,
      this.tableArn,
      this.tableId,
      this.tableName})
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
        backupArn == other.backupArn &&
        backupCreationDateTime == other.backupCreationDateTime &&
        backupExpiryDateTime == other.backupExpiryDateTime &&
        backupName == other.backupName &&
        backupSizeBytes == other.backupSizeBytes &&
        backupStatus == other.backupStatus &&
        backupType == other.backupType &&
        tableArn == other.tableArn &&
        tableId == other.tableId &&
        tableName == other.tableName;
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
                                    $jc($jc(0, backupArn.hashCode),
                                        backupCreationDateTime.hashCode),
                                    backupExpiryDateTime.hashCode),
                                backupName.hashCode),
                            backupSizeBytes.hashCode),
                        backupStatus.hashCode),
                    backupType.hashCode),
                tableArn.hashCode),
            tableId.hashCode),
        tableName.hashCode));
  }
}

class BackupSummaryBuilder
    implements Builder<BackupSummary, BackupSummaryBuilder> {
  _$BackupSummary? _$v;

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

  String? _tableArn;
  String? get tableArn => _$this._tableArn;
  set tableArn(String? tableArn) => _$this._tableArn = tableArn;

  String? _tableId;
  String? get tableId => _$this._tableId;
  set tableId(String? tableId) => _$this._tableId = tableId;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  BackupSummaryBuilder() {
    BackupSummary._init(this);
  }

  BackupSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupArn = $v.backupArn;
      _backupCreationDateTime = $v.backupCreationDateTime;
      _backupExpiryDateTime = $v.backupExpiryDateTime;
      _backupName = $v.backupName;
      _backupSizeBytes = $v.backupSizeBytes;
      _backupStatus = $v.backupStatus;
      _backupType = $v.backupType;
      _tableArn = $v.tableArn;
      _tableId = $v.tableId;
      _tableName = $v.tableName;
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
            backupArn: backupArn,
            backupCreationDateTime: backupCreationDateTime,
            backupExpiryDateTime: backupExpiryDateTime,
            backupName: backupName,
            backupSizeBytes: backupSizeBytes,
            backupStatus: backupStatus,
            backupType: backupType,
            tableArn: tableArn,
            tableId: tableId,
            tableName: tableName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
