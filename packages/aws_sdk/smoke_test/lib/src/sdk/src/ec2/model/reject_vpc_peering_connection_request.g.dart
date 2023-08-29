// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_vpc_peering_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectVpcPeeringConnectionRequest
    extends RejectVpcPeeringConnectionRequest {
  @override
  final bool dryRun;
  @override
  final String? vpcPeeringConnectionId;

  factory _$RejectVpcPeeringConnectionRequest(
          [void Function(RejectVpcPeeringConnectionRequestBuilder)? updates]) =>
      (new RejectVpcPeeringConnectionRequestBuilder()..update(updates))
          ._build();

  _$RejectVpcPeeringConnectionRequest._(
      {required this.dryRun, this.vpcPeeringConnectionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RejectVpcPeeringConnectionRequest', 'dryRun');
  }

  @override
  RejectVpcPeeringConnectionRequest rebuild(
          void Function(RejectVpcPeeringConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RejectVpcPeeringConnectionRequestBuilder toBuilder() =>
      new RejectVpcPeeringConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectVpcPeeringConnectionRequest &&
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

class RejectVpcPeeringConnectionRequestBuilder
    implements
        Builder<RejectVpcPeeringConnectionRequest,
            RejectVpcPeeringConnectionRequestBuilder> {
  _$RejectVpcPeeringConnectionRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  RejectVpcPeeringConnectionRequestBuilder() {
    RejectVpcPeeringConnectionRequest._init(this);
  }

  RejectVpcPeeringConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectVpcPeeringConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RejectVpcPeeringConnectionRequest;
  }

  @override
  void update(
      void Function(RejectVpcPeeringConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectVpcPeeringConnectionRequest build() => _build();

  _$RejectVpcPeeringConnectionRequest _build() {
    final _$result = _$v ??
        new _$RejectVpcPeeringConnectionRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'RejectVpcPeeringConnectionRequest', 'dryRun'),
            vpcPeeringConnectionId: vpcPeeringConnectionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
