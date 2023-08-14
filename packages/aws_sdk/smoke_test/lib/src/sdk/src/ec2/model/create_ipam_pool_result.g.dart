// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ipam_pool_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIpamPoolResult extends CreateIpamPoolResult {
  @override
  final IpamPool? ipamPool;

  factory _$CreateIpamPoolResult(
          [void Function(CreateIpamPoolResultBuilder)? updates]) =>
      (new CreateIpamPoolResultBuilder()..update(updates))._build();

  _$CreateIpamPoolResult._({this.ipamPool}) : super._();

  @override
  CreateIpamPoolResult rebuild(
          void Function(CreateIpamPoolResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIpamPoolResultBuilder toBuilder() =>
      new CreateIpamPoolResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIpamPoolResult && ipamPool == other.ipamPool;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamPool.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateIpamPoolResultBuilder
    implements Builder<CreateIpamPoolResult, CreateIpamPoolResultBuilder> {
  _$CreateIpamPoolResult? _$v;

  IpamPoolBuilder? _ipamPool;
  IpamPoolBuilder get ipamPool => _$this._ipamPool ??= new IpamPoolBuilder();
  set ipamPool(IpamPoolBuilder? ipamPool) => _$this._ipamPool = ipamPool;

  CreateIpamPoolResultBuilder();

  CreateIpamPoolResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamPool = $v.ipamPool?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIpamPoolResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateIpamPoolResult;
  }

  @override
  void update(void Function(CreateIpamPoolResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIpamPoolResult build() => _build();

  _$CreateIpamPoolResult _build() {
    _$CreateIpamPoolResult _$result;
    try {
      _$result =
          _$v ?? new _$CreateIpamPoolResult._(ipamPool: _ipamPool?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamPool';
        _ipamPool?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateIpamPoolResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
