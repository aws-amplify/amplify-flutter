// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise_byoip_cidr_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvertiseByoipCidrResult extends AdvertiseByoipCidrResult {
  @override
  final ByoipCidr? byoipCidr;

  factory _$AdvertiseByoipCidrResult(
          [void Function(AdvertiseByoipCidrResultBuilder)? updates]) =>
      (new AdvertiseByoipCidrResultBuilder()..update(updates))._build();

  _$AdvertiseByoipCidrResult._({this.byoipCidr}) : super._();

  @override
  AdvertiseByoipCidrResult rebuild(
          void Function(AdvertiseByoipCidrResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvertiseByoipCidrResultBuilder toBuilder() =>
      new AdvertiseByoipCidrResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvertiseByoipCidrResult && byoipCidr == other.byoipCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byoipCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AdvertiseByoipCidrResultBuilder
    implements
        Builder<AdvertiseByoipCidrResult, AdvertiseByoipCidrResultBuilder> {
  _$AdvertiseByoipCidrResult? _$v;

  ByoipCidrBuilder? _byoipCidr;
  ByoipCidrBuilder get byoipCidr =>
      _$this._byoipCidr ??= new ByoipCidrBuilder();
  set byoipCidr(ByoipCidrBuilder? byoipCidr) => _$this._byoipCidr = byoipCidr;

  AdvertiseByoipCidrResultBuilder();

  AdvertiseByoipCidrResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byoipCidr = $v.byoipCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvertiseByoipCidrResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvertiseByoipCidrResult;
  }

  @override
  void update(void Function(AdvertiseByoipCidrResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdvertiseByoipCidrResult build() => _build();

  _$AdvertiseByoipCidrResult _build() {
    _$AdvertiseByoipCidrResult _$result;
    try {
      _$result = _$v ??
          new _$AdvertiseByoipCidrResult._(byoipCidr: _byoipCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byoipCidr';
        _byoipCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdvertiseByoipCidrResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
