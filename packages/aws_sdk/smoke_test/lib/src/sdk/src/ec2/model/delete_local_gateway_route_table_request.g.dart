// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_local_gateway_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocalGatewayRouteTableRequest
    extends DeleteLocalGatewayRouteTableRequest {
  @override
  final String? localGatewayRouteTableId;
  @override
  final bool dryRun;

  factory _$DeleteLocalGatewayRouteTableRequest(
          [void Function(DeleteLocalGatewayRouteTableRequestBuilder)?
              updates]) =>
      (new DeleteLocalGatewayRouteTableRequestBuilder()..update(updates))
          ._build();

  _$DeleteLocalGatewayRouteTableRequest._(
      {this.localGatewayRouteTableId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteLocalGatewayRouteTableRequest', 'dryRun');
  }

  @override
  DeleteLocalGatewayRouteTableRequest rebuild(
          void Function(DeleteLocalGatewayRouteTableRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocalGatewayRouteTableRequestBuilder toBuilder() =>
      new DeleteLocalGatewayRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLocalGatewayRouteTableRequest &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLocalGatewayRouteTableRequestBuilder
    implements
        Builder<DeleteLocalGatewayRouteTableRequest,
            DeleteLocalGatewayRouteTableRequestBuilder> {
  _$DeleteLocalGatewayRouteTableRequest? _$v;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteLocalGatewayRouteTableRequestBuilder() {
    DeleteLocalGatewayRouteTableRequest._init(this);
  }

  DeleteLocalGatewayRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLocalGatewayRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLocalGatewayRouteTableRequest;
  }

  @override
  void update(
      void Function(DeleteLocalGatewayRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocalGatewayRouteTableRequest build() => _build();

  _$DeleteLocalGatewayRouteTableRequest _build() {
    final _$result = _$v ??
        new _$DeleteLocalGatewayRouteTableRequest._(
            localGatewayRouteTableId: localGatewayRouteTableId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteLocalGatewayRouteTableRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
