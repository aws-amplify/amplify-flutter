// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_ipam_resource_discovery_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateIpamResourceDiscoveryRequest
    extends DisassociateIpamResourceDiscoveryRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamResourceDiscoveryAssociationId;

  factory _$DisassociateIpamResourceDiscoveryRequest(
          [void Function(DisassociateIpamResourceDiscoveryRequestBuilder)?
              updates]) =>
      (new DisassociateIpamResourceDiscoveryRequestBuilder()..update(updates))
          ._build();

  _$DisassociateIpamResourceDiscoveryRequest._(
      {required this.dryRun, this.ipamResourceDiscoveryAssociationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateIpamResourceDiscoveryRequest', 'dryRun');
  }

  @override
  DisassociateIpamResourceDiscoveryRequest rebuild(
          void Function(DisassociateIpamResourceDiscoveryRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateIpamResourceDiscoveryRequestBuilder toBuilder() =>
      new DisassociateIpamResourceDiscoveryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateIpamResourceDiscoveryRequest &&
        dryRun == other.dryRun &&
        ipamResourceDiscoveryAssociationId ==
            other.ipamResourceDiscoveryAssociationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryAssociationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateIpamResourceDiscoveryRequestBuilder
    implements
        Builder<DisassociateIpamResourceDiscoveryRequest,
            DisassociateIpamResourceDiscoveryRequestBuilder> {
  _$DisassociateIpamResourceDiscoveryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamResourceDiscoveryAssociationId;
  String? get ipamResourceDiscoveryAssociationId =>
      _$this._ipamResourceDiscoveryAssociationId;
  set ipamResourceDiscoveryAssociationId(
          String? ipamResourceDiscoveryAssociationId) =>
      _$this._ipamResourceDiscoveryAssociationId =
          ipamResourceDiscoveryAssociationId;

  DisassociateIpamResourceDiscoveryRequestBuilder() {
    DisassociateIpamResourceDiscoveryRequest._init(this);
  }

  DisassociateIpamResourceDiscoveryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamResourceDiscoveryAssociationId =
          $v.ipamResourceDiscoveryAssociationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateIpamResourceDiscoveryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateIpamResourceDiscoveryRequest;
  }

  @override
  void update(
      void Function(DisassociateIpamResourceDiscoveryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateIpamResourceDiscoveryRequest build() => _build();

  _$DisassociateIpamResourceDiscoveryRequest _build() {
    final _$result = _$v ??
        new _$DisassociateIpamResourceDiscoveryRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisassociateIpamResourceDiscoveryRequest', 'dryRun'),
            ipamResourceDiscoveryAssociationId:
                ipamResourceDiscoveryAssociationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
