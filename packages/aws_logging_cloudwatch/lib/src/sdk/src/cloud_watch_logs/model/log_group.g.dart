// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogGroup extends LogGroup {
  @override
  final String? logGroupName;
  @override
  final _i2.Int64? creationTime;
  @override
  final int? retentionInDays;
  @override
  final int? metricFilterCount;
  @override
  final String? arn;
  @override
  final _i2.Int64? storedBytes;
  @override
  final String? kmsKeyId;
  @override
  final _i3.DataProtectionStatus? dataProtectionStatus;

  factory _$LogGroup([void Function(LogGroupBuilder)? updates]) =>
      (new LogGroupBuilder()..update(updates))._build();

  _$LogGroup._(
      {this.logGroupName,
      this.creationTime,
      this.retentionInDays,
      this.metricFilterCount,
      this.arn,
      this.storedBytes,
      this.kmsKeyId,
      this.dataProtectionStatus})
      : super._();

  @override
  LogGroup rebuild(void Function(LogGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogGroupBuilder toBuilder() => new LogGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogGroup &&
        logGroupName == other.logGroupName &&
        creationTime == other.creationTime &&
        retentionInDays == other.retentionInDays &&
        metricFilterCount == other.metricFilterCount &&
        arn == other.arn &&
        storedBytes == other.storedBytes &&
        kmsKeyId == other.kmsKeyId &&
        dataProtectionStatus == other.dataProtectionStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logGroupName.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, retentionInDays.hashCode);
    _$hash = $jc(_$hash, metricFilterCount.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, storedBytes.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, dataProtectionStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LogGroupBuilder implements Builder<LogGroup, LogGroupBuilder> {
  _$LogGroup? _$v;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  _i2.Int64? _creationTime;
  _i2.Int64? get creationTime => _$this._creationTime;
  set creationTime(_i2.Int64? creationTime) =>
      _$this._creationTime = creationTime;

  int? _retentionInDays;
  int? get retentionInDays => _$this._retentionInDays;
  set retentionInDays(int? retentionInDays) =>
      _$this._retentionInDays = retentionInDays;

  int? _metricFilterCount;
  int? get metricFilterCount => _$this._metricFilterCount;
  set metricFilterCount(int? metricFilterCount) =>
      _$this._metricFilterCount = metricFilterCount;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i2.Int64? _storedBytes;
  _i2.Int64? get storedBytes => _$this._storedBytes;
  set storedBytes(_i2.Int64? storedBytes) => _$this._storedBytes = storedBytes;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  _i3.DataProtectionStatus? _dataProtectionStatus;
  _i3.DataProtectionStatus? get dataProtectionStatus =>
      _$this._dataProtectionStatus;
  set dataProtectionStatus(_i3.DataProtectionStatus? dataProtectionStatus) =>
      _$this._dataProtectionStatus = dataProtectionStatus;

  LogGroupBuilder() {
    LogGroup._init(this);
  }

  LogGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logGroupName = $v.logGroupName;
      _creationTime = $v.creationTime;
      _retentionInDays = $v.retentionInDays;
      _metricFilterCount = $v.metricFilterCount;
      _arn = $v.arn;
      _storedBytes = $v.storedBytes;
      _kmsKeyId = $v.kmsKeyId;
      _dataProtectionStatus = $v.dataProtectionStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogGroup;
  }

  @override
  void update(void Function(LogGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogGroup build() => _build();

  _$LogGroup _build() {
    final _$result = _$v ??
        new _$LogGroup._(
            logGroupName: logGroupName,
            creationTime: creationTime,
            retentionInDays: retentionInDays,
            metricFilterCount: metricFilterCount,
            arn: arn,
            storedBytes: storedBytes,
            kmsKeyId: kmsKeyId,
            dataProtectionStatus: dataProtectionStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
