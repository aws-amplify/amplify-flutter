// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_route_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateRouteTableRequest extends AssociateRouteTableRequest {
  @override
  final bool dryRun;
  @override
  final String? routeTableId;
  @override
  final String? subnetId;
  @override
  final String? gatewayId;

  factory _$AssociateRouteTableRequest(
          [void Function(AssociateRouteTableRequestBuilder)? updates]) =>
      (new AssociateRouteTableRequestBuilder()..update(updates))._build();

  _$AssociateRouteTableRequest._(
      {required this.dryRun, this.routeTableId, this.subnetId, this.gatewayId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateRouteTableRequest', 'dryRun');
  }

  @override
  AssociateRouteTableRequest rebuild(
          void Function(AssociateRouteTableRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateRouteTableRequestBuilder toBuilder() =>
      new AssociateRouteTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateRouteTableRequest &&
        dryRun == other.dryRun &&
        routeTableId == other.routeTableId &&
        subnetId == other.subnetId &&
        gatewayId == other.gatewayId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, routeTableId.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, gatewayId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateRouteTableRequestBuilder
    implements
        Builder<AssociateRouteTableRequest, AssociateRouteTableRequestBuilder> {
  _$AssociateRouteTableRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _gatewayId;
  String? get gatewayId => _$this._gatewayId;
  set gatewayId(String? gatewayId) => _$this._gatewayId = gatewayId;

  AssociateRouteTableRequestBuilder() {
    AssociateRouteTableRequest._init(this);
  }

  AssociateRouteTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _routeTableId = $v.routeTableId;
      _subnetId = $v.subnetId;
      _gatewayId = $v.gatewayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateRouteTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateRouteTableRequest;
  }

  @override
  void update(void Function(AssociateRouteTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateRouteTableRequest build() => _build();

  _$AssociateRouteTableRequest _build() {
    final _$result = _$v ??
        new _$AssociateRouteTableRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AssociateRouteTableRequest', 'dryRun'),
            routeTableId: routeTableId,
            subnetId: subnetId,
            gatewayId: gatewayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
