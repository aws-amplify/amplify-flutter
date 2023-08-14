// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_vgw_route_propagation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableVgwRoutePropagationRequest
    extends DisableVgwRoutePropagationRequest {
  @override
  final String? gatewayId;
  @override
  final String? routeTableId;
  @override
  final bool dryRun;

  factory _$DisableVgwRoutePropagationRequest(
          [void Function(DisableVgwRoutePropagationRequestBuilder)? updates]) =>
      (new DisableVgwRoutePropagationRequestBuilder()..update(updates))
          ._build();

  _$DisableVgwRoutePropagationRequest._(
      {this.gatewayId, this.routeTableId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableVgwRoutePropagationRequest', 'dryRun');
  }

  @override
  DisableVgwRoutePropagationRequest rebuild(
          void Function(DisableVgwRoutePropagationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableVgwRoutePropagationRequestBuilder toBuilder() =>
      new DisableVgwRoutePropagationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableVgwRoutePropagationRequest &&
        gatewayId == other.gatewayId &&
        routeTableId == other.routeTableId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gatewayId.hashCode);
    _$hash = $jc(_$hash, routeTableId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableVgwRoutePropagationRequestBuilder
    implements
        Builder<DisableVgwRoutePropagationRequest,
            DisableVgwRoutePropagationRequestBuilder> {
  _$DisableVgwRoutePropagationRequest? _$v;

  String? _gatewayId;
  String? get gatewayId => _$this._gatewayId;
  set gatewayId(String? gatewayId) => _$this._gatewayId = gatewayId;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisableVgwRoutePropagationRequestBuilder() {
    DisableVgwRoutePropagationRequest._init(this);
  }

  DisableVgwRoutePropagationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gatewayId = $v.gatewayId;
      _routeTableId = $v.routeTableId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableVgwRoutePropagationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableVgwRoutePropagationRequest;
  }

  @override
  void update(
      void Function(DisableVgwRoutePropagationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableVgwRoutePropagationRequest build() => _build();

  _$DisableVgwRoutePropagationRequest _build() {
    final _$result = _$v ??
        new _$DisableVgwRoutePropagationRequest._(
            gatewayId: gatewayId,
            routeTableId: routeTableId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisableVgwRoutePropagationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
