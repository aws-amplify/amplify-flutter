// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_byoip_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WithdrawByoipCidrRequest extends WithdrawByoipCidrRequest {
  @override
  final String? cidr;
  @override
  final bool dryRun;

  factory _$WithdrawByoipCidrRequest(
          [void Function(WithdrawByoipCidrRequestBuilder)? updates]) =>
      (new WithdrawByoipCidrRequestBuilder()..update(updates))._build();

  _$WithdrawByoipCidrRequest._({this.cidr, required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'WithdrawByoipCidrRequest', 'dryRun');
  }

  @override
  WithdrawByoipCidrRequest rebuild(
          void Function(WithdrawByoipCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WithdrawByoipCidrRequestBuilder toBuilder() =>
      new WithdrawByoipCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WithdrawByoipCidrRequest &&
        cidr == other.cidr &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WithdrawByoipCidrRequestBuilder
    implements
        Builder<WithdrawByoipCidrRequest, WithdrawByoipCidrRequestBuilder> {
  _$WithdrawByoipCidrRequest? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  WithdrawByoipCidrRequestBuilder() {
    WithdrawByoipCidrRequest._init(this);
  }

  WithdrawByoipCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WithdrawByoipCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WithdrawByoipCidrRequest;
  }

  @override
  void update(void Function(WithdrawByoipCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WithdrawByoipCidrRequest build() => _build();

  _$WithdrawByoipCidrRequest _build() {
    final _$result = _$v ??
        new _$WithdrawByoipCidrRequest._(
            cidr: cidr,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'WithdrawByoipCidrRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
