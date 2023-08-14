// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_route_table_association_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceRouteTableAssociationRequest
    extends ReplaceRouteTableAssociationRequest {
  @override
  final String? associationId;
  @override
  final bool dryRun;
  @override
  final String? routeTableId;

  factory _$ReplaceRouteTableAssociationRequest(
          [void Function(ReplaceRouteTableAssociationRequestBuilder)?
              updates]) =>
      (new ReplaceRouteTableAssociationRequestBuilder()..update(updates))
          ._build();

  _$ReplaceRouteTableAssociationRequest._(
      {this.associationId, required this.dryRun, this.routeTableId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ReplaceRouteTableAssociationRequest', 'dryRun');
  }

  @override
  ReplaceRouteTableAssociationRequest rebuild(
          void Function(ReplaceRouteTableAssociationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceRouteTableAssociationRequestBuilder toBuilder() =>
      new ReplaceRouteTableAssociationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceRouteTableAssociationRequest &&
        associationId == other.associationId &&
        dryRun == other.dryRun &&
        routeTableId == other.routeTableId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, routeTableId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceRouteTableAssociationRequestBuilder
    implements
        Builder<ReplaceRouteTableAssociationRequest,
            ReplaceRouteTableAssociationRequestBuilder> {
  _$ReplaceRouteTableAssociationRequest? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  ReplaceRouteTableAssociationRequestBuilder() {
    ReplaceRouteTableAssociationRequest._init(this);
  }

  ReplaceRouteTableAssociationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _dryRun = $v.dryRun;
      _routeTableId = $v.routeTableId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceRouteTableAssociationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceRouteTableAssociationRequest;
  }

  @override
  void update(
      void Function(ReplaceRouteTableAssociationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceRouteTableAssociationRequest build() => _build();

  _$ReplaceRouteTableAssociationRequest _build() {
    final _$result = _$v ??
        new _$ReplaceRouteTableAssociationRequest._(
            associationId: associationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ReplaceRouteTableAssociationRequest', 'dryRun'),
            routeTableId: routeTableId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
