// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_local_gateway_route_table_vpc_association_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocalGatewayRouteTableVpcAssociationRequest
    extends DeleteLocalGatewayRouteTableVpcAssociationRequest {
  @override
  final String? localGatewayRouteTableVpcAssociationId;
  @override
  final bool dryRun;

  factory _$DeleteLocalGatewayRouteTableVpcAssociationRequest(
          [void Function(
                  DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder)?
              updates]) =>
      (new DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteLocalGatewayRouteTableVpcAssociationRequest._(
      {this.localGatewayRouteTableVpcAssociationId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteLocalGatewayRouteTableVpcAssociationRequest', 'dryRun');
  }

  @override
  DeleteLocalGatewayRouteTableVpcAssociationRequest rebuild(
          void Function(
                  DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder toBuilder() =>
      new DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLocalGatewayRouteTableVpcAssociationRequest &&
        localGatewayRouteTableVpcAssociationId ==
            other.localGatewayRouteTableVpcAssociationId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableVpcAssociationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder
    implements
        Builder<DeleteLocalGatewayRouteTableVpcAssociationRequest,
            DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder> {
  _$DeleteLocalGatewayRouteTableVpcAssociationRequest? _$v;

  String? _localGatewayRouteTableVpcAssociationId;
  String? get localGatewayRouteTableVpcAssociationId =>
      _$this._localGatewayRouteTableVpcAssociationId;
  set localGatewayRouteTableVpcAssociationId(
          String? localGatewayRouteTableVpcAssociationId) =>
      _$this._localGatewayRouteTableVpcAssociationId =
          localGatewayRouteTableVpcAssociationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder() {
    DeleteLocalGatewayRouteTableVpcAssociationRequest._init(this);
  }

  DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVpcAssociationId =
          $v.localGatewayRouteTableVpcAssociationId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLocalGatewayRouteTableVpcAssociationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLocalGatewayRouteTableVpcAssociationRequest;
  }

  @override
  void update(
      void Function(DeleteLocalGatewayRouteTableVpcAssociationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocalGatewayRouteTableVpcAssociationRequest build() => _build();

  _$DeleteLocalGatewayRouteTableVpcAssociationRequest _build() {
    final _$result = _$v ??
        new _$DeleteLocalGatewayRouteTableVpcAssociationRequest._(
            localGatewayRouteTableVpcAssociationId:
                localGatewayRouteTableVpcAssociationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'DeleteLocalGatewayRouteTableVpcAssociationRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
