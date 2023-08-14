// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision_byoip_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionByoipCidrResult extends ProvisionByoipCidrResult {
  @override
  final ByoipCidr? byoipCidr;

  factory _$ProvisionByoipCidrResult(
          [void Function(ProvisionByoipCidrResultBuilder)? updates]) =>
      (new ProvisionByoipCidrResultBuilder()..update(updates))._build();

  _$ProvisionByoipCidrResult._({this.byoipCidr}) : super._();

  @override
  ProvisionByoipCidrResult rebuild(
          void Function(ProvisionByoipCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionByoipCidrResultBuilder toBuilder() =>
      new ProvisionByoipCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionByoipCidrResult && byoipCidr == other.byoipCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byoipCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionByoipCidrResultBuilder
    implements
        Builder<ProvisionByoipCidrResult, ProvisionByoipCidrResultBuilder> {
  _$ProvisionByoipCidrResult? _$v;

  ByoipCidrBuilder? _byoipCidr;
  ByoipCidrBuilder get byoipCidr =>
      _$this._byoipCidr ??= new ByoipCidrBuilder();
  set byoipCidr(ByoipCidrBuilder? byoipCidr) => _$this._byoipCidr = byoipCidr;

  ProvisionByoipCidrResultBuilder();

  ProvisionByoipCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byoipCidr = $v.byoipCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionByoipCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionByoipCidrResult;
  }

  @override
  void update(void Function(ProvisionByoipCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionByoipCidrResult build() => _build();

  _$ProvisionByoipCidrResult _build() {
    _$ProvisionByoipCidrResult _$result;
    try {
      _$result = _$v ??
          new _$ProvisionByoipCidrResult._(byoipCidr: _byoipCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byoipCidr';
        _byoipCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProvisionByoipCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
