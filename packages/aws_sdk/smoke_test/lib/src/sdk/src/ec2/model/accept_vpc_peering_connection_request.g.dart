// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_vpc_peering_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptVpcPeeringConnectionRequest
    extends AcceptVpcPeeringConnectionRequest {
  @override
  final bool dryRun;
  @override
  final String? vpcPeeringConnectionId;

  factory _$AcceptVpcPeeringConnectionRequest(
          [void Function(AcceptVpcPeeringConnectionRequestBuilder)? updates]) =>
      (new AcceptVpcPeeringConnectionRequestBuilder()..update(updates))
          ._build();

  _$AcceptVpcPeeringConnectionRequest._(
      {required this.dryRun, this.vpcPeeringConnectionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AcceptVpcPeeringConnectionRequest', 'dryRun');
  }

  @override
  AcceptVpcPeeringConnectionRequest rebuild(
          void Function(AcceptVpcPeeringConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptVpcPeeringConnectionRequestBuilder toBuilder() =>
      new AcceptVpcPeeringConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptVpcPeeringConnectionRequest &&
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

class AcceptVpcPeeringConnectionRequestBuilder
    implements
        Builder<AcceptVpcPeeringConnectionRequest,
            AcceptVpcPeeringConnectionRequestBuilder> {
  _$AcceptVpcPeeringConnectionRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  AcceptVpcPeeringConnectionRequestBuilder() {
    AcceptVpcPeeringConnectionRequest._init(this);
  }

  AcceptVpcPeeringConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptVpcPeeringConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptVpcPeeringConnectionRequest;
  }

  @override
  void update(
      void Function(AcceptVpcPeeringConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptVpcPeeringConnectionRequest build() => _build();

  _$AcceptVpcPeeringConnectionRequest _build() {
    final _$result = _$v ??
        new _$AcceptVpcPeeringConnectionRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AcceptVpcPeeringConnectionRequest', 'dryRun'),
            vpcPeeringConnectionId: vpcPeeringConnectionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
