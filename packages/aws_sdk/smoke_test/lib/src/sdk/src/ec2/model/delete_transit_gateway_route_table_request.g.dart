// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayRouteTableRequest
    extends DeleteTransitGatewayRouteTableRequest {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayRouteTableRequest(
          [void Function(DeleteTransitGatewayRouteTableRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayRouteTableRequestBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayRouteTableRequest._(
      {this.transitGatewayRouteTableId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayRouteTableRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayRouteTableRequest rebuild(
          void Function(DeleteTransitGatewayRouteTableRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayRouteTableRequestBuilder toBuilder() =>
      new DeleteTransitGatewayRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayRouteTableRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayRouteTableRequestBuilder
    implements
        Builder<DeleteTransitGatewayRouteTableRequest,
            DeleteTransitGatewayRouteTableRequestBuilder> {
  _$DeleteTransitGatewayRouteTableRequest? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayRouteTableRequestBuilder() {
    DeleteTransitGatewayRouteTableRequest._init(this);
  }

  DeleteTransitGatewayRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayRouteTableRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayRouteTableRequest build() => _build();

  _$DeleteTransitGatewayRouteTableRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayRouteTableRequest._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTransitGatewayRouteTableRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
