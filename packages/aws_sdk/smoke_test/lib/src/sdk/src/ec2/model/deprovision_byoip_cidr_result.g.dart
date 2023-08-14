// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deprovision_byoip_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeprovisionByoipCidrResult extends DeprovisionByoipCidrResult {
  @override
  final ByoipCidr? byoipCidr;

  factory _$DeprovisionByoipCidrResult(
          [void Function(DeprovisionByoipCidrResultBuilder)? updates]) =>
      (new DeprovisionByoipCidrResultBuilder()..update(updates))._build();

  _$DeprovisionByoipCidrResult._({this.byoipCidr}) : super._();

  @override
  DeprovisionByoipCidrResult rebuild(
          void Function(DeprovisionByoipCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeprovisionByoipCidrResultBuilder toBuilder() =>
      new DeprovisionByoipCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeprovisionByoipCidrResult && byoipCidr == other.byoipCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byoipCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeprovisionByoipCidrResultBuilder
    implements
        Builder<DeprovisionByoipCidrResult, DeprovisionByoipCidrResultBuilder> {
  _$DeprovisionByoipCidrResult? _$v;

  ByoipCidrBuilder? _byoipCidr;
  ByoipCidrBuilder get byoipCidr =>
      _$this._byoipCidr ??= new ByoipCidrBuilder();
  set byoipCidr(ByoipCidrBuilder? byoipCidr) => _$this._byoipCidr = byoipCidr;

  DeprovisionByoipCidrResultBuilder();

  DeprovisionByoipCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byoipCidr = $v.byoipCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeprovisionByoipCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeprovisionByoipCidrResult;
  }

  @override
  void update(void Function(DeprovisionByoipCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeprovisionByoipCidrResult build() => _build();

  _$DeprovisionByoipCidrResult _build() {
    _$DeprovisionByoipCidrResult _$result;
    try {
      _$result = _$v ??
          new _$DeprovisionByoipCidrResult._(byoipCidr: _byoipCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byoipCidr';
        _byoipCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeprovisionByoipCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
