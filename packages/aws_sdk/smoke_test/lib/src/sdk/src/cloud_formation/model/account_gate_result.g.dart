// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.account_gate_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountGateResult extends AccountGateResult {
  @override
  final _i2.AccountGateStatus? status;
  @override
  final String? statusReason;

  factory _$AccountGateResult(
          [void Function(AccountGateResultBuilder)? updates]) =>
      (new AccountGateResultBuilder()..update(updates))._build();

  _$AccountGateResult._({this.status, this.statusReason}) : super._();

  @override
  AccountGateResult rebuild(void Function(AccountGateResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountGateResultBuilder toBuilder() =>
      new AccountGateResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountGateResult &&
        status == other.status &&
        statusReason == other.statusReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccountGateResultBuilder
    implements Builder<AccountGateResult, AccountGateResultBuilder> {
  _$AccountGateResult? _$v;

  _i2.AccountGateStatus? _status;
  _i2.AccountGateStatus? get status => _$this._status;
  set status(_i2.AccountGateStatus? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  AccountGateResultBuilder() {
    AccountGateResult._init(this);
  }

  AccountGateResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _statusReason = $v.statusReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountGateResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountGateResult;
  }

  @override
  void update(void Function(AccountGateResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountGateResult build() => _build();

  _$AccountGateResult _build() {
    final _$result = _$v ??
        new _$AccountGateResult._(status: status, statusReason: statusReason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
