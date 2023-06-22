// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackInstance extends StackInstance {
  @override
  final String? stackSetId;
  @override
  final String? region;
  @override
  final String? account;
  @override
  final String? stackId;
  @override
  final _i6.BuiltList<_i2.Parameter>? parameterOverrides;
  @override
  final _i3.StackInstanceStatus? status;
  @override
  final _i4.StackInstanceComprehensiveStatus? stackInstanceStatus;
  @override
  final String? statusReason;
  @override
  final String? organizationalUnitId;
  @override
  final _i5.StackDriftStatus? driftStatus;
  @override
  final DateTime? lastDriftCheckTimestamp;
  @override
  final String? lastOperationId;

  factory _$StackInstance([void Function(StackInstanceBuilder)? updates]) =>
      (new StackInstanceBuilder()..update(updates))._build();

  _$StackInstance._(
      {this.stackSetId,
      this.region,
      this.account,
      this.stackId,
      this.parameterOverrides,
      this.status,
      this.stackInstanceStatus,
      this.statusReason,
      this.organizationalUnitId,
      this.driftStatus,
      this.lastDriftCheckTimestamp,
      this.lastOperationId})
      : super._();

  @override
  StackInstance rebuild(void Function(StackInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackInstanceBuilder toBuilder() => new StackInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackInstance &&
        stackSetId == other.stackSetId &&
        region == other.region &&
        account == other.account &&
        stackId == other.stackId &&
        parameterOverrides == other.parameterOverrides &&
        status == other.status &&
        stackInstanceStatus == other.stackInstanceStatus &&
        statusReason == other.statusReason &&
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
    _$hash = $jc(_$hash, parameterOverrides.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, stackInstanceStatus.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, organizationalUnitId.hashCode);
    _$hash = $jc(_$hash, driftStatus.hashCode);
    _$hash = $jc(_$hash, lastDriftCheckTimestamp.hashCode);
    _$hash = $jc(_$hash, lastOperationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackInstanceBuilder
    implements Builder<StackInstance, StackInstanceBuilder> {
  _$StackInstance? _$v;

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

  _i6.ListBuilder<_i2.Parameter>? _parameterOverrides;
  _i6.ListBuilder<_i2.Parameter> get parameterOverrides =>
      _$this._parameterOverrides ??= new _i6.ListBuilder<_i2.Parameter>();
  set parameterOverrides(_i6.ListBuilder<_i2.Parameter>? parameterOverrides) =>
      _$this._parameterOverrides = parameterOverrides;

  _i3.StackInstanceStatus? _status;
  _i3.StackInstanceStatus? get status => _$this._status;
  set status(_i3.StackInstanceStatus? status) => _$this._status = status;

  _i4.StackInstanceComprehensiveStatusBuilder? _stackInstanceStatus;
  _i4.StackInstanceComprehensiveStatusBuilder get stackInstanceStatus =>
      _$this._stackInstanceStatus ??=
          new _i4.StackInstanceComprehensiveStatusBuilder();
  set stackInstanceStatus(
          _i4.StackInstanceComprehensiveStatusBuilder? stackInstanceStatus) =>
      _$this._stackInstanceStatus = stackInstanceStatus;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  String? _organizationalUnitId;
  String? get organizationalUnitId => _$this._organizationalUnitId;
  set organizationalUnitId(String? organizationalUnitId) =>
      _$this._organizationalUnitId = organizationalUnitId;

  _i5.StackDriftStatus? _driftStatus;
  _i5.StackDriftStatus? get driftStatus => _$this._driftStatus;
  set driftStatus(_i5.StackDriftStatus? driftStatus) =>
      _$this._driftStatus = driftStatus;

  DateTime? _lastDriftCheckTimestamp;
  DateTime? get lastDriftCheckTimestamp => _$this._lastDriftCheckTimestamp;
  set lastDriftCheckTimestamp(DateTime? lastDriftCheckTimestamp) =>
      _$this._lastDriftCheckTimestamp = lastDriftCheckTimestamp;

  String? _lastOperationId;
  String? get lastOperationId => _$this._lastOperationId;
  set lastOperationId(String? lastOperationId) =>
      _$this._lastOperationId = lastOperationId;

  StackInstanceBuilder() {
    StackInstance._init(this);
  }

  StackInstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackSetId = $v.stackSetId;
      _region = $v.region;
      _account = $v.account;
      _stackId = $v.stackId;
      _parameterOverrides = $v.parameterOverrides?.toBuilder();
      _status = $v.status;
      _stackInstanceStatus = $v.stackInstanceStatus?.toBuilder();
      _statusReason = $v.statusReason;
      _organizationalUnitId = $v.organizationalUnitId;
      _driftStatus = $v.driftStatus;
      _lastDriftCheckTimestamp = $v.lastDriftCheckTimestamp;
      _lastOperationId = $v.lastOperationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackInstance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackInstance;
  }

  @override
  void update(void Function(StackInstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackInstance build() => _build();

  _$StackInstance _build() {
    _$StackInstance _$result;
    try {
      _$result = _$v ??
          new _$StackInstance._(
              stackSetId: stackSetId,
              region: region,
              account: account,
              stackId: stackId,
              parameterOverrides: _parameterOverrides?.build(),
              status: status,
              stackInstanceStatus: _stackInstanceStatus?.build(),
              statusReason: statusReason,
              organizationalUnitId: organizationalUnitId,
              driftStatus: driftStatus,
              lastDriftCheckTimestamp: lastDriftCheckTimestamp,
              lastOperationId: lastOperationId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameterOverrides';
        _parameterOverrides?.build();

        _$failedField = 'stackInstanceStatus';
        _stackInstanceStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackInstance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
