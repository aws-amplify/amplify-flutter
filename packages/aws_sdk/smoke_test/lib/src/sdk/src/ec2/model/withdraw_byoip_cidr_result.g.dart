// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_byoip_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WithdrawByoipCidrResult extends WithdrawByoipCidrResult {
  @override
  final ByoipCidr? byoipCidr;

  factory _$WithdrawByoipCidrResult(
          [void Function(WithdrawByoipCidrResultBuilder)? updates]) =>
      (new WithdrawByoipCidrResultBuilder()..update(updates))._build();

  _$WithdrawByoipCidrResult._({this.byoipCidr}) : super._();

  @override
  WithdrawByoipCidrResult rebuild(
          void Function(WithdrawByoipCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WithdrawByoipCidrResultBuilder toBuilder() =>
      new WithdrawByoipCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WithdrawByoipCidrResult && byoipCidr == other.byoipCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byoipCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WithdrawByoipCidrResultBuilder
    implements
        Builder<WithdrawByoipCidrResult, WithdrawByoipCidrResultBuilder> {
  _$WithdrawByoipCidrResult? _$v;

  ByoipCidrBuilder? _byoipCidr;
  ByoipCidrBuilder get byoipCidr =>
      _$this._byoipCidr ??= new ByoipCidrBuilder();
  set byoipCidr(ByoipCidrBuilder? byoipCidr) => _$this._byoipCidr = byoipCidr;

  WithdrawByoipCidrResultBuilder();

  WithdrawByoipCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byoipCidr = $v.byoipCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WithdrawByoipCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WithdrawByoipCidrResult;
  }

  @override
  void update(void Function(WithdrawByoipCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WithdrawByoipCidrResult build() => _build();

  _$WithdrawByoipCidrResult _build() {
    _$WithdrawByoipCidrResult _$result;
    try {
      _$result = _$v ??
          new _$WithdrawByoipCidrResult._(byoipCidr: _byoipCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byoipCidr';
        _byoipCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WithdrawByoipCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
