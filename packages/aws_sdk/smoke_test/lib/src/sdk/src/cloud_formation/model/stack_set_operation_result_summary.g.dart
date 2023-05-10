// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_set_operation_result_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetOperationResultSummary extends StackSetOperationResultSummary {
  @override
  final String? account;
  @override
  final String? region;
  @override
  final _i2.StackSetOperationResultStatus? status;
  @override
  final String? statusReason;
  @override
  final _i3.AccountGateResult? accountGateResult;
  @override
  final String? organizationalUnitId;

  factory _$StackSetOperationResultSummary(
          [void Function(StackSetOperationResultSummaryBuilder)? updates]) =>
      (new StackSetOperationResultSummaryBuilder()..update(updates))._build();

  _$StackSetOperationResultSummary._(
      {this.account,
      this.region,
      this.status,
      this.statusReason,
      this.accountGateResult,
      this.organizationalUnitId})
      : super._();

  @override
  StackSetOperationResultSummary rebuild(
          void Function(StackSetOperationResultSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetOperationResultSummaryBuilder toBuilder() =>
      new StackSetOperationResultSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetOperationResultSummary &&
        account == other.account &&
        region == other.region &&
        status == other.status &&
        statusReason == other.statusReason &&
        accountGateResult == other.accountGateResult &&
        organizationalUnitId == other.organizationalUnitId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, accountGateResult.hashCode);
    _$hash = $jc(_$hash, organizationalUnitId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetOperationResultSummaryBuilder
    implements
        Builder<StackSetOperationResultSummary,
            StackSetOperationResultSummaryBuilder> {
  _$StackSetOperationResultSummary? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  _i2.StackSetOperationResultStatus? _status;
  _i2.StackSetOperationResultStatus? get status => _$this._status;
  set status(_i2.StackSetOperationResultStatus? status) =>
      _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  _i3.AccountGateResultBuilder? _accountGateResult;
  _i3.AccountGateResultBuilder get accountGateResult =>
      _$this._accountGateResult ??= new _i3.AccountGateResultBuilder();
  set accountGateResult(_i3.AccountGateResultBuilder? accountGateResult) =>
      _$this._accountGateResult = accountGateResult;

  String? _organizationalUnitId;
  String? get organizationalUnitId => _$this._organizationalUnitId;
  set organizationalUnitId(String? organizationalUnitId) =>
      _$this._organizationalUnitId = organizationalUnitId;

  StackSetOperationResultSummaryBuilder() {
    StackSetOperationResultSummary._init(this);
  }

  StackSetOperationResultSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _region = $v.region;
      _status = $v.status;
      _statusReason = $v.statusReason;
      _accountGateResult = $v.accountGateResult?.toBuilder();
      _organizationalUnitId = $v.organizationalUnitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetOperationResultSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetOperationResultSummary;
  }

  @override
  void update(void Function(StackSetOperationResultSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetOperationResultSummary build() => _build();

  _$StackSetOperationResultSummary _build() {
    _$StackSetOperationResultSummary _$result;
    try {
      _$result = _$v ??
          new _$StackSetOperationResultSummary._(
              account: account,
              region: region,
              status: status,
              statusReason: statusReason,
              accountGateResult: _accountGateResult?.build(),
              organizationalUnitId: organizationalUnitId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountGateResult';
        _accountGateResult?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StackSetOperationResultSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
