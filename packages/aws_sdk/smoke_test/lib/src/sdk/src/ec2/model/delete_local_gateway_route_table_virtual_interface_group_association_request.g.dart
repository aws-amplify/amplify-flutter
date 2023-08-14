// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_local_gateway_route_table_virtual_interface_group_association_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
    extends DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest {
  @override
  final String? localGatewayRouteTableVirtualInterfaceGroupAssociationId;
  @override
  final bool dryRun;

  factory _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest(
          [void Function(
                  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)?
              updates]) =>
      (new DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest._(
      {this.localGatewayRouteTableVirtualInterfaceGroupAssociationId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun,
        r'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest',
        'dryRun');
  }

  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest rebuild(
          void Function(
                  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
      toBuilder() =>
          new DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest &&
        localGatewayRouteTableVirtualInterfaceGroupAssociationId ==
            other.localGatewayRouteTableVirtualInterfaceGroupAssociationId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash,
        localGatewayRouteTableVirtualInterfaceGroupAssociationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
    implements
        Builder<
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder> {
  _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest? _$v;

  String? _localGatewayRouteTableVirtualInterfaceGroupAssociationId;
  String? get localGatewayRouteTableVirtualInterfaceGroupAssociationId =>
      _$this._localGatewayRouteTableVirtualInterfaceGroupAssociationId;
  set localGatewayRouteTableVirtualInterfaceGroupAssociationId(
          String? localGatewayRouteTableVirtualInterfaceGroupAssociationId) =>
      _$this._localGatewayRouteTableVirtualInterfaceGroupAssociationId =
          localGatewayRouteTableVirtualInterfaceGroupAssociationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder() {
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest._init(
        this);
  }

  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVirtualInterfaceGroupAssociationId =
          $v.localGatewayRouteTableVirtualInterfaceGroupAssociationId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest;
  }

  @override
  void update(
      void Function(
              DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest build() =>
      _build();

  _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      _build() {
    final _$result = _$v ??
        new _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
            ._(
            localGatewayRouteTableVirtualInterfaceGroupAssociationId:
                localGatewayRouteTableVirtualInterfaceGroupAssociationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
