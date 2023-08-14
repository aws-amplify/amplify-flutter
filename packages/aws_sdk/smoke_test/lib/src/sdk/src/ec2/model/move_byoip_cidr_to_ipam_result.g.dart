// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_byoip_cidr_to_ipam_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MoveByoipCidrToIpamResult extends MoveByoipCidrToIpamResult {
  @override
  final ByoipCidr? byoipCidr;

  factory _$MoveByoipCidrToIpamResult(
          [void Function(MoveByoipCidrToIpamResultBuilder)? updates]) =>
      (new MoveByoipCidrToIpamResultBuilder()..update(updates))._build();

  _$MoveByoipCidrToIpamResult._({this.byoipCidr}) : super._();

  @override
  MoveByoipCidrToIpamResult rebuild(
          void Function(MoveByoipCidrToIpamResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoveByoipCidrToIpamResultBuilder toBuilder() =>
      new MoveByoipCidrToIpamResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoveByoipCidrToIpamResult && byoipCidr == other.byoipCidr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byoipCidr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MoveByoipCidrToIpamResultBuilder
    implements
        Builder<MoveByoipCidrToIpamResult, MoveByoipCidrToIpamResultBuilder> {
  _$MoveByoipCidrToIpamResult? _$v;

  ByoipCidrBuilder? _byoipCidr;
  ByoipCidrBuilder get byoipCidr =>
      _$this._byoipCidr ??= new ByoipCidrBuilder();
  set byoipCidr(ByoipCidrBuilder? byoipCidr) => _$this._byoipCidr = byoipCidr;

  MoveByoipCidrToIpamResultBuilder();

  MoveByoipCidrToIpamResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byoipCidr = $v.byoipCidr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoveByoipCidrToIpamResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoveByoipCidrToIpamResult;
  }

  @override
  void update(void Function(MoveByoipCidrToIpamResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoveByoipCidrToIpamResult build() => _build();

  _$MoveByoipCidrToIpamResult _build() {
    _$MoveByoipCidrToIpamResult _$result;
    try {
      _$result = _$v ??
          new _$MoveByoipCidrToIpamResult._(byoipCidr: _byoipCidr?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byoipCidr';
        _byoipCidr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MoveByoipCidrToIpamResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
