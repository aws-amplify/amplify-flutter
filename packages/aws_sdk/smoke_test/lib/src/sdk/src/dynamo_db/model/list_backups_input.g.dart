// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_backups_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBackupsInput extends ListBackupsInput {
  @override
  final String? tableName;
  @override
  final int? limit;
  @override
  final DateTime? timeRangeLowerBound;
  @override
  final DateTime? timeRangeUpperBound;
  @override
  final String? exclusiveStartBackupArn;
  @override
  final _i3.BackupTypeFilter? backupType;

  factory _$ListBackupsInput(
          [void Function(ListBackupsInputBuilder)? updates]) =>
      (new ListBackupsInputBuilder()..update(updates))._build();

  _$ListBackupsInput._(
      {this.tableName,
      this.limit,
      this.timeRangeLowerBound,
      this.timeRangeUpperBound,
      this.exclusiveStartBackupArn,
      this.backupType})
      : super._();

  @override
  ListBackupsInput rebuild(void Function(ListBackupsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBackupsInputBuilder toBuilder() =>
      new ListBackupsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBackupsInput &&
        tableName == other.tableName &&
        limit == other.limit &&
        timeRangeLowerBound == other.timeRangeLowerBound &&
        timeRangeUpperBound == other.timeRangeUpperBound &&
        exclusiveStartBackupArn == other.exclusiveStartBackupArn &&
        backupType == other.backupType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, timeRangeLowerBound.hashCode);
    _$hash = $jc(_$hash, timeRangeUpperBound.hashCode);
    _$hash = $jc(_$hash, exclusiveStartBackupArn.hashCode);
    _$hash = $jc(_$hash, backupType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListBackupsInputBuilder
    implements Builder<ListBackupsInput, ListBackupsInputBuilder> {
  _$ListBackupsInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  DateTime? _timeRangeLowerBound;
  DateTime? get timeRangeLowerBound => _$this._timeRangeLowerBound;
  set timeRangeLowerBound(DateTime? timeRangeLowerBound) =>
      _$this._timeRangeLowerBound = timeRangeLowerBound;

  DateTime? _timeRangeUpperBound;
  DateTime? get timeRangeUpperBound => _$this._timeRangeUpperBound;
  set timeRangeUpperBound(DateTime? timeRangeUpperBound) =>
      _$this._timeRangeUpperBound = timeRangeUpperBound;

  String? _exclusiveStartBackupArn;
  String? get exclusiveStartBackupArn => _$this._exclusiveStartBackupArn;
  set exclusiveStartBackupArn(String? exclusiveStartBackupArn) =>
      _$this._exclusiveStartBackupArn = exclusiveStartBackupArn;

  _i3.BackupTypeFilter? _backupType;
  _i3.BackupTypeFilter? get backupType => _$this._backupType;
  set backupType(_i3.BackupTypeFilter? backupType) =>
      _$this._backupType = backupType;

  ListBackupsInputBuilder() {
    ListBackupsInput._init(this);
  }

  ListBackupsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _limit = $v.limit;
      _timeRangeLowerBound = $v.timeRangeLowerBound;
      _timeRangeUpperBound = $v.timeRangeUpperBound;
      _exclusiveStartBackupArn = $v.exclusiveStartBackupArn;
      _backupType = $v.backupType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBackupsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBackupsInput;
  }

  @override
  void update(void Function(ListBackupsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBackupsInput build() => _build();

  _$ListBackupsInput _build() {
    final _$result = _$v ??
        new _$ListBackupsInput._(
            tableName: tableName,
            limit: limit,
            timeRangeLowerBound: timeRangeLowerBound,
            timeRangeUpperBound: timeRangeUpperBound,
            exclusiveStartBackupArn: exclusiveStartBackupArn,
            backupType: backupType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
