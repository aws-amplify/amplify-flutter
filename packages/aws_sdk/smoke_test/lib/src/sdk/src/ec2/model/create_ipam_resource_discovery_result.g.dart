// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ipam_resource_discovery_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIpamResourceDiscoveryResult
    extends CreateIpamResourceDiscoveryResult {
  @override
  final IpamResourceDiscovery? ipamResourceDiscovery;

  factory _$CreateIpamResourceDiscoveryResult(
          [void Function(CreateIpamResourceDiscoveryResultBuilder)? updates]) =>
      (new CreateIpamResourceDiscoveryResultBuilder()..update(updates))
          ._build();

  _$CreateIpamResourceDiscoveryResult._({this.ipamResourceDiscovery})
      : super._();

  @override
  CreateIpamResourceDiscoveryResult rebuild(
          void Function(CreateIpamResourceDiscoveryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIpamResourceDiscoveryResultBuilder toBuilder() =>
      new CreateIpamResourceDiscoveryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIpamResourceDiscoveryResult &&
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

class CreateIpamResourceDiscoveryResultBuilder
    implements
        Builder<CreateIpamResourceDiscoveryResult,
            CreateIpamResourceDiscoveryResultBuilder> {
  _$CreateIpamResourceDiscoveryResult? _$v;

  IpamResourceDiscoveryBuilder? _ipamResourceDiscovery;
  IpamResourceDiscoveryBuilder get ipamResourceDiscovery =>
      _$this._ipamResourceDiscovery ??= new IpamResourceDiscoveryBuilder();
  set ipamResourceDiscovery(
          IpamResourceDiscoveryBuilder? ipamResourceDiscovery) =>
      _$this._ipamResourceDiscovery = ipamResourceDiscovery;

  CreateIpamResourceDiscoveryResultBuilder();

  CreateIpamResourceDiscoveryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamResourceDiscovery = $v.ipamResourceDiscovery?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIpamResourceDiscoveryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateIpamResourceDiscoveryResult;
  }

  @override
  void update(
      void Function(CreateIpamResourceDiscoveryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIpamResourceDiscoveryResult build() => _build();

  _$CreateIpamResourceDiscoveryResult _build() {
    _$CreateIpamResourceDiscoveryResult _$result;
    try {
      _$result = _$v ??
          new _$CreateIpamResourceDiscoveryResult._(
              ipamResourceDiscovery: _ipamResourceDiscovery?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamResourceDiscovery';
        _ipamResourceDiscovery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateIpamResourceDiscoveryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
