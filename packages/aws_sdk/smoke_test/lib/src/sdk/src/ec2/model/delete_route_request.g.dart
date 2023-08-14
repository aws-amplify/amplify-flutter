// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRouteRequest extends DeleteRouteRequest {
  @override
  final String? destinationCidrBlock;
  @override
  final String? destinationIpv6CidrBlock;
  @override
  final String? destinationPrefixListId;
  @override
  final bool dryRun;
  @override
  final String? routeTableId;

  factory _$DeleteRouteRequest(
          [void Function(DeleteRouteRequestBuilder)? updates]) =>
      (new DeleteRouteRequestBuilder()..update(updates))._build();

  _$DeleteRouteRequest._(
      {this.destinationCidrBlock,
      this.destinationIpv6CidrBlock,
      this.destinationPrefixListId,
      required this.dryRun,
      this.routeTableId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteRouteRequest', 'dryRun');
  }

  @override
  DeleteRouteRequest rebuild(
          void Function(DeleteRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRouteRequestBuilder toBuilder() =>
      new DeleteRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRouteRequest &&
        destinationCidrBlock == other.destinationCidrBlock &&
        destinationIpv6CidrBlock == other.destinationIpv6CidrBlock &&
        destinationPrefixListId == other.destinationPrefixListId &&
        dryRun == other.dryRun &&
        routeTableId == other.routeTableId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, destinationIpv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, destinationPrefixListId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, routeTableId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRouteRequestBuilder
    implements Builder<DeleteRouteRequest, DeleteRouteRequestBuilder> {
  _$DeleteRouteRequest? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _destinationIpv6CidrBlock;
  String? get destinationIpv6CidrBlock => _$this._destinationIpv6CidrBlock;
  set destinationIpv6CidrBlock(String? destinationIpv6CidrBlock) =>
      _$this._destinationIpv6CidrBlock = destinationIpv6CidrBlock;

  String? _destinationPrefixListId;
  String? get destinationPrefixListId => _$this._destinationPrefixListId;
  set destinationPrefixListId(String? destinationPrefixListId) =>
      _$this._destinationPrefixListId = destinationPrefixListId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  DeleteRouteRequestBuilder() {
    DeleteRouteRequest._init(this);
  }

  DeleteRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _destinationIpv6CidrBlock = $v.destinationIpv6CidrBlock;
      _destinationPrefixListId = $v.destinationPrefixListId;
      _dryRun = $v.dryRun;
      _routeTableId = $v.routeTableId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRouteRequest;
  }

  @override
  void update(void Function(DeleteRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRouteRequest build() => _build();

  _$DeleteRouteRequest _build() {
    final _$result = _$v ??
        new _$DeleteRouteRequest._(
            destinationCidrBlock: destinationCidrBlock,
            destinationIpv6CidrBlock: destinationIpv6CidrBlock,
            destinationPrefixListId: destinationPrefixListId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteRouteRequest', 'dryRun'),
            routeTableId: routeTableId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
