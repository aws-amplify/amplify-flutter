// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_vgw_route_propagation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableVgwRoutePropagationRequest
    extends EnableVgwRoutePropagationRequest {
  @override
  final String? gatewayId;
  @override
  final String? routeTableId;
  @override
  final bool dryRun;

  factory _$EnableVgwRoutePropagationRequest(
          [void Function(EnableVgwRoutePropagationRequestBuilder)? updates]) =>
      (new EnableVgwRoutePropagationRequestBuilder()..update(updates))._build();

  _$EnableVgwRoutePropagationRequest._(
      {this.gatewayId, this.routeTableId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableVgwRoutePropagationRequest', 'dryRun');
  }

  @override
  EnableVgwRoutePropagationRequest rebuild(
          void Function(EnableVgwRoutePropagationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableVgwRoutePropagationRequestBuilder toBuilder() =>
      new EnableVgwRoutePropagationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableVgwRoutePropagationRequest &&
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

class EnableVgwRoutePropagationRequestBuilder
    implements
        Builder<EnableVgwRoutePropagationRequest,
            EnableVgwRoutePropagationRequestBuilder> {
  _$EnableVgwRoutePropagationRequest? _$v;

  String? _gatewayId;
  String? get gatewayId => _$this._gatewayId;
  set gatewayId(String? gatewayId) => _$this._gatewayId = gatewayId;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EnableVgwRoutePropagationRequestBuilder() {
    EnableVgwRoutePropagationRequest._init(this);
  }

  EnableVgwRoutePropagationRequestBuilder get _$this {
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
  void replace(EnableVgwRoutePropagationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableVgwRoutePropagationRequest;
  }

  @override
  void update(void Function(EnableVgwRoutePropagationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableVgwRoutePropagationRequest build() => _build();

  _$EnableVgwRoutePropagationRequest _build() {
    final _$result = _$v ??
        new _$EnableVgwRoutePropagationRequest._(
            gatewayId: gatewayId,
            routeTableId: routeTableId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'EnableVgwRoutePropagationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
