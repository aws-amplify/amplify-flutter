// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_peering_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcPeeringConnectionRequest
    extends DeleteVpcPeeringConnectionRequest {
  @override
  final bool dryRun;
  @override
  final String? vpcPeeringConnectionId;

  factory _$DeleteVpcPeeringConnectionRequest(
          [void Function(DeleteVpcPeeringConnectionRequestBuilder)? updates]) =>
      (new DeleteVpcPeeringConnectionRequestBuilder()..update(updates))
          ._build();

  _$DeleteVpcPeeringConnectionRequest._(
      {required this.dryRun, this.vpcPeeringConnectionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVpcPeeringConnectionRequest', 'dryRun');
  }

  @override
  DeleteVpcPeeringConnectionRequest rebuild(
          void Function(DeleteVpcPeeringConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcPeeringConnectionRequestBuilder toBuilder() =>
      new DeleteVpcPeeringConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcPeeringConnectionRequest &&
        dryRun == other.dryRun &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpcPeeringConnectionRequestBuilder
    implements
        Builder<DeleteVpcPeeringConnectionRequest,
            DeleteVpcPeeringConnectionRequestBuilder> {
  _$DeleteVpcPeeringConnectionRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  DeleteVpcPeeringConnectionRequestBuilder() {
    DeleteVpcPeeringConnectionRequest._init(this);
  }

  DeleteVpcPeeringConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcPeeringConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcPeeringConnectionRequest;
  }

  @override
  void update(
      void Function(DeleteVpcPeeringConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcPeeringConnectionRequest build() => _build();

  _$DeleteVpcPeeringConnectionRequest _build() {
    final _$result = _$v ??
        new _$DeleteVpcPeeringConnectionRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVpcPeeringConnectionRequest', 'dryRun'),
            vpcPeeringConnectionId: vpcPeeringConnectionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
