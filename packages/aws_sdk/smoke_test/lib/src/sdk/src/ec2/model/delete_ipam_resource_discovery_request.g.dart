// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_ipam_resource_discovery_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIpamResourceDiscoveryRequest
    extends DeleteIpamResourceDiscoveryRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamResourceDiscoveryId;

  factory _$DeleteIpamResourceDiscoveryRequest(
          [void Function(DeleteIpamResourceDiscoveryRequestBuilder)?
              updates]) =>
      (new DeleteIpamResourceDiscoveryRequestBuilder()..update(updates))
          ._build();

  _$DeleteIpamResourceDiscoveryRequest._(
      {required this.dryRun, this.ipamResourceDiscoveryId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteIpamResourceDiscoveryRequest', 'dryRun');
  }

  @override
  DeleteIpamResourceDiscoveryRequest rebuild(
          void Function(DeleteIpamResourceDiscoveryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIpamResourceDiscoveryRequestBuilder toBuilder() =>
      new DeleteIpamResourceDiscoveryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIpamResourceDiscoveryRequest &&
        dryRun == other.dryRun &&
        ipamResourceDiscoveryId == other.ipamResourceDiscoveryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIpamResourceDiscoveryRequestBuilder
    implements
        Builder<DeleteIpamResourceDiscoveryRequest,
            DeleteIpamResourceDiscoveryRequestBuilder> {
  _$DeleteIpamResourceDiscoveryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamResourceDiscoveryId;
  String? get ipamResourceDiscoveryId => _$this._ipamResourceDiscoveryId;
  set ipamResourceDiscoveryId(String? ipamResourceDiscoveryId) =>
      _$this._ipamResourceDiscoveryId = ipamResourceDiscoveryId;

  DeleteIpamResourceDiscoveryRequestBuilder() {
    DeleteIpamResourceDiscoveryRequest._init(this);
  }

  DeleteIpamResourceDiscoveryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamResourceDiscoveryId = $v.ipamResourceDiscoveryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIpamResourceDiscoveryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIpamResourceDiscoveryRequest;
  }

  @override
  void update(
      void Function(DeleteIpamResourceDiscoveryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIpamResourceDiscoveryRequest build() => _build();

  _$DeleteIpamResourceDiscoveryRequest _build() {
    final _$result = _$v ??
        new _$DeleteIpamResourceDiscoveryRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteIpamResourceDiscoveryRequest', 'dryRun'),
            ipamResourceDiscoveryId: ipamResourceDiscoveryId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
