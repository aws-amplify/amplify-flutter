// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_ipam_pool_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIpamPoolResult extends DeleteIpamPoolResult {
  @override
  final IpamPool? ipamPool;

  factory _$DeleteIpamPoolResult(
          [void Function(DeleteIpamPoolResultBuilder)? updates]) =>
      (new DeleteIpamPoolResultBuilder()..update(updates))._build();

  _$DeleteIpamPoolResult._({this.ipamPool}) : super._();

  @override
  DeleteIpamPoolResult rebuild(
          void Function(DeleteIpamPoolResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIpamPoolResultBuilder toBuilder() =>
      new DeleteIpamPoolResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIpamPoolResult && ipamPool == other.ipamPool;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamPool.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIpamPoolResultBuilder
    implements Builder<DeleteIpamPoolResult, DeleteIpamPoolResultBuilder> {
  _$DeleteIpamPoolResult? _$v;

  IpamPoolBuilder? _ipamPool;
  IpamPoolBuilder get ipamPool => _$this._ipamPool ??= new IpamPoolBuilder();
  set ipamPool(IpamPoolBuilder? ipamPool) => _$this._ipamPool = ipamPool;

  DeleteIpamPoolResultBuilder();

  DeleteIpamPoolResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamPool = $v.ipamPool?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIpamPoolResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIpamPoolResult;
  }

  @override
  void update(void Function(DeleteIpamPoolResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIpamPoolResult build() => _build();

  _$DeleteIpamPoolResult _build() {
    _$DeleteIpamPoolResult _$result;
    try {
      _$result =
          _$v ?? new _$DeleteIpamPoolResult._(ipamPool: _ipamPool?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPool';
        _ipamPool?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteIpamPoolResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
