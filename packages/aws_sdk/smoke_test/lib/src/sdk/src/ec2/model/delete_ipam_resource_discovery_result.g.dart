// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_ipam_resource_discovery_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIpamResourceDiscoveryResult
    extends DeleteIpamResourceDiscoveryResult {
  @override
  final IpamResourceDiscovery? ipamResourceDiscovery;

  factory _$DeleteIpamResourceDiscoveryResult(
          [void Function(DeleteIpamResourceDiscoveryResultBuilder)? updates]) =>
      (new DeleteIpamResourceDiscoveryResultBuilder()..update(updates))
          ._build();

  _$DeleteIpamResourceDiscoveryResult._({this.ipamResourceDiscovery})
      : super._();

  @override
  DeleteIpamResourceDiscoveryResult rebuild(
          void Function(DeleteIpamResourceDiscoveryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIpamResourceDiscoveryResultBuilder toBuilder() =>
      new DeleteIpamResourceDiscoveryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIpamResourceDiscoveryResult &&
        ipamResourceDiscovery == other.ipamResourceDiscovery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamResourceDiscovery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIpamResourceDiscoveryResultBuilder
    implements
        Builder<DeleteIpamResourceDiscoveryResult,
            DeleteIpamResourceDiscoveryResultBuilder> {
  _$DeleteIpamResourceDiscoveryResult? _$v;

  IpamResourceDiscoveryBuilder? _ipamResourceDiscovery;
  IpamResourceDiscoveryBuilder get ipamResourceDiscovery =>
      _$this._ipamResourceDiscovery ??= new IpamResourceDiscoveryBuilder();
  set ipamResourceDiscovery(
          IpamResourceDiscoveryBuilder? ipamResourceDiscovery) =>
      _$this._ipamResourceDiscovery = ipamResourceDiscovery;

  DeleteIpamResourceDiscoveryResultBuilder();

  DeleteIpamResourceDiscoveryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceDiscovery = $v.ipamResourceDiscovery?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIpamResourceDiscoveryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIpamResourceDiscoveryResult;
  }

  @override
  void update(
      void Function(DeleteIpamResourceDiscoveryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIpamResourceDiscoveryResult build() => _build();

  _$DeleteIpamResourceDiscoveryResult _build() {
    _$DeleteIpamResourceDiscoveryResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteIpamResourceDiscoveryResult._(
              ipamResourceDiscovery: _ipamResourceDiscovery?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscovery';
        _ipamResourceDiscovery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteIpamResourceDiscoveryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
