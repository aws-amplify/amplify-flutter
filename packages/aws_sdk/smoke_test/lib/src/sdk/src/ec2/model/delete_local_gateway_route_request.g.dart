// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_local_gateway_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocalGatewayRouteRequest extends DeleteLocalGatewayRouteRequest {
  @override
  final String? destinationCidrBlock;
  @override
  final String? localGatewayRouteTableId;
  @override
  final bool dryRun;
  @override
  final String? destinationPrefixListId;

  factory _$DeleteLocalGatewayRouteRequest(
          [void Function(DeleteLocalGatewayRouteRequestBuilder)? updates]) =>
      (new DeleteLocalGatewayRouteRequestBuilder()..update(updates))._build();

  _$DeleteLocalGatewayRouteRequest._(
      {this.destinationCidrBlock,
      this.localGatewayRouteTableId,
      required this.dryRun,
      this.destinationPrefixListId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteLocalGatewayRouteRequest', 'dryRun');
  }

  @override
  DeleteLocalGatewayRouteRequest rebuild(
          void Function(DeleteLocalGatewayRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocalGatewayRouteRequestBuilder toBuilder() =>
      new DeleteLocalGatewayRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLocalGatewayRouteRequest &&
        destinationCidrBlock == other.destinationCidrBlock &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        dryRun == other.dryRun &&
        destinationPrefixListId == other.destinationPrefixListId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, destinationPrefixListId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLocalGatewayRouteRequestBuilder
    implements
        Builder<DeleteLocalGatewayRouteRequest,
            DeleteLocalGatewayRouteRequestBuilder> {
  _$DeleteLocalGatewayRouteRequest? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _destinationPrefixListId;
  String? get destinationPrefixListId => _$this._destinationPrefixListId;
  set destinationPrefixListId(String? destinationPrefixListId) =>
      _$this._destinationPrefixListId = destinationPrefixListId;

  DeleteLocalGatewayRouteRequestBuilder() {
    DeleteLocalGatewayRouteRequest._init(this);
  }

  DeleteLocalGatewayRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _dryRun = $v.dryRun;
      _destinationPrefixListId = $v.destinationPrefixListId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLocalGatewayRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLocalGatewayRouteRequest;
  }

  @override
  void update(void Function(DeleteLocalGatewayRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocalGatewayRouteRequest build() => _build();

  _$DeleteLocalGatewayRouteRequest _build() {
    final _$result = _$v ??
        new _$DeleteLocalGatewayRouteRequest._(
            destinationCidrBlock: destinationCidrBlock,
            localGatewayRouteTableId: localGatewayRouteTableId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteLocalGatewayRouteRequest', 'dryRun'),
            destinationPrefixListId: destinationPrefixListId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
