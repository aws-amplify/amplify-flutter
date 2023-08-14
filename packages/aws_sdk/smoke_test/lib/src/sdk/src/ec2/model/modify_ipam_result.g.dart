// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamResult extends ModifyIpamResult {
  @override
  final Ipam? ipam;

  factory _$ModifyIpamResult(
          [void Function(ModifyIpamResultBuilder)? updates]) =>
      (new ModifyIpamResultBuilder()..update(updates))._build();

  _$ModifyIpamResult._({this.ipam}) : super._();

  @override
  ModifyIpamResult rebuild(void Function(ModifyIpamResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamResultBuilder toBuilder() =>
      new ModifyIpamResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamResult && ipam == other.ipam;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipam.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamResultBuilder
    implements Builder<ModifyIpamResult, ModifyIpamResultBuilder> {
  _$ModifyIpamResult? _$v;

  IpamBuilder? _ipam;
  IpamBuilder get ipam => _$this._ipam ??= new IpamBuilder();
  set ipam(IpamBuilder? ipam) => _$this._ipam = ipam;

  ModifyIpamResultBuilder();

  ModifyIpamResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipam = $v.ipam?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamResult;
  }

  @override
  void update(void Function(ModifyIpamResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamResult build() => _build();

  _$ModifyIpamResult _build() {
    _$ModifyIpamResult _$result;
    try {
      _$result = _$v ?? new _$ModifyIpamResult._(ipam: _ipam?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipam';
        _ipam?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyIpamResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
