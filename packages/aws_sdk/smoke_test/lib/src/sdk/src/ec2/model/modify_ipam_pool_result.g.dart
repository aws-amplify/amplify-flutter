// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_pool_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamPoolResult extends ModifyIpamPoolResult {
  @override
  final IpamPool? ipamPool;

  factory _$ModifyIpamPoolResult(
          [void Function(ModifyIpamPoolResultBuilder)? updates]) =>
      (new ModifyIpamPoolResultBuilder()..update(updates))._build();

  _$ModifyIpamPoolResult._({this.ipamPool}) : super._();

  @override
  ModifyIpamPoolResult rebuild(
          void Function(ModifyIpamPoolResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamPoolResultBuilder toBuilder() =>
      new ModifyIpamPoolResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamPoolResult && ipamPool == other.ipamPool;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamPool.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamPoolResultBuilder
    implements Builder<ModifyIpamPoolResult, ModifyIpamPoolResultBuilder> {
  _$ModifyIpamPoolResult? _$v;

  IpamPoolBuilder? _ipamPool;
  IpamPoolBuilder get ipamPool => _$this._ipamPool ??= new IpamPoolBuilder();
  set ipamPool(IpamPoolBuilder? ipamPool) => _$this._ipamPool = ipamPool;

  ModifyIpamPoolResultBuilder();

  ModifyIpamPoolResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamPool = $v.ipamPool?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamPoolResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamPoolResult;
  }

  @override
  void update(void Function(ModifyIpamPoolResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamPoolResult build() => _build();

  _$ModifyIpamPoolResult _build() {
    _$ModifyIpamPoolResult _$result;
    try {
      _$result =
          _$v ?? new _$ModifyIpamPoolResult._(ipamPool: _ipamPool?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPool';
        _ipamPool?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyIpamPoolResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
