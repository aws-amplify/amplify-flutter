// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_instance_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackInstanceSummary extends StackInstanceSummary {
  @override
  final String? stackSetId;
  @override
  final String? region;
  @override
  final String? account;
  @override
  final String? stackId;
  @override
  final _i2.StackInstanceStatus? status;
  @override
  final String? statusReason;
  @override
  final _i3.StackInstanceComprehensiveStatus? stackInstanceStatus;
  @override
  final String? organizationalUnitId;
  @override
  final _i4.StackDriftStatus? driftStatus;
  @override
  final DateTime? lastDriftCheckTimestamp;
  @override
  final String? lastOperationId;

  factory _$StackInstanceSummary(
          [void Function(StackInstanceSummaryBuilder)? updates]) =>
      (new StackInstanceSummaryBuilder()..update(updates))._build();

  _$StackInstanceSummary._(
      {this.stackSetId,
      this.region,
      this.account,
      this.stackId,
      this.status,
      this.statusReason,
      this.stackInstanceStatus,
      this.organizationalUnitId,
      this.driftStatus,
      this.lastDriftCheckTimestamp,
      this.lastOperationId})
      : super._();

  @override
  StackInstanceSummary rebuild(
          void Function(StackInstanceSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackInstanceSummaryBuilder toBuilder() =>
      new StackInstanceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackInstanceSummary &&
        stackSetId == other.stackSetId &&
        region == other.region &&
        account == other.account &&
        stackId == other.stackId &&
        status == other.status &&
        statusReason == other.statusReason &&
        stackInstanceStatus == other.stackInstanceStatus &&
        organizationalUnitId == other.organizationalUnitId &&
        driftStatus == other.driftStatus &&
        lastDriftCheckTimestamp == other.lastDriftCheckTimestamp &&
        lastOperationId == other.lastOperationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackSetId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, stackInstanceStatus.hashCode);
    _$hash = $jc(_$hash, organizationalUnitId.hashCode);
    _$hash = $jc(_$hash, driftStatus.hashCode);
    _$hash = $jc(_$hash, lastDriftCheckTimestamp.hashCode);
    _$hash = $jc(_$hash, lastOperationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackInstanceSummaryBuilder
    implements Builder<StackInstanceSummary, StackInstanceSummaryBuilder> {
  _$StackInstanceSummary? _$v;

  String? _stackSetId;
  String? get stackSetId => _$this._stackSetId;
  set stackSetId(String? stackSetId) => _$this._stackSetId = stackSetId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  _i2.StackInstanceStatus? _status;
  _i2.StackInstanceStatus? get status => _$this._status;
  set status(_i2.StackInstanceStatus? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  _i3.StackInstanceComprehensiveStatusBuilder? _stackInstanceStatus;
  _i3.StackInstanceComprehensiveStatusBuilder get stackInstanceStatus =>
      _$this._stackInstanceStatus ??=
          new _i3.StackInstanceComprehensiveStatusBuilder();
  set stackInstanceStatus(
          _i3.StackInstanceComprehensiveStatusBuilder? stackInstanceStatus) =>
      _$this._stackInstanceStatus = stackInstanceStatus;

  String? _organizationalUnitId;
  String? get organizationalUnitId => _$this._organizationalUnitId;
  set organizationalUnitId(String? organizationalUnitId) =>
      _$this._organizationalUnitId = organizationalUnitId;

  _i4.StackDriftStatus? _driftStatus;
  _i4.StackDriftStatus? get driftStatus => _$this._driftStatus;
  set driftStatus(_i4.StackDriftStatus? driftStatus) =>
      _$this._driftStatus = driftStatus;

  DateTime? _lastDriftCheckTimestamp;
  DateTime? get lastDriftCheckTimestamp => _$this._lastDriftCheckTimestamp;
  set lastDriftCheckTimestamp(DateTime? lastDriftCheckTimestamp) =>
      _$this._lastDriftCheckTimestamp = lastDriftCheckTimestamp;

  String? _lastOperationId;
  String? get lastOperationId => _$this._lastOperationId;
  set lastOperationId(String? lastOperationId) =>
      _$this._lastOperationId = lastOperationId;

  StackInstanceSummaryBuilder() {
    StackInstanceSummary._init(this);
  }

  StackInstanceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetId = $v.stackSetId;
      _region = $v.region;
      _account = $v.account;
      _stackId = $v.stackId;
      _status = $v.status;
      _statusReason = $v.statusReason;
      _stackInstanceStatus = $v.stackInstanceStatus?.toBuilder();
      _organizationalUnitId = $v.organizationalUnitId;
      _driftStatus = $v.driftStatus;
      _lastDriftCheckTimestamp = $v.lastDriftCheckTimestamp;
      _lastOperationId = $v.lastOperationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackInstanceSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackInstanceSummary;
  }

  @override
  void update(void Function(StackInstanceSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackInstanceSummary build() => _build();

  _$StackInstanceSummary _build() {
    _$StackInstanceSummary _$result;
    try {
      _$result = _$v ??
          new _$StackInstanceSummary._(
              stackSetId: stackSetId,
              region: region,
              account: account,
              stackId: stackId,
              status: status,
              statusReason: statusReason,
              stackInstanceStatus: _stackInstanceStatus?.build(),
              organizationalUnitId: organizationalUnitId,
              driftStatus: driftStatus,
              lastDriftCheckTimestamp: lastDriftCheckTimestamp,
              lastOperationId: lastOperationId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackInstanceStatus';
        _stackInstanceStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackInstanceSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
