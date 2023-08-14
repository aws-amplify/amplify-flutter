// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_route_table_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayRouteTableAssociationsResult
    extends GetTransitGatewayRouteTableAssociationsResult {
  @override
  final _i2.BuiltList<TransitGatewayRouteTableAssociation>? associations;
  @override
  final String? nextToken;

  factory _$GetTransitGatewayRouteTableAssociationsResult(
          [void Function(GetTransitGatewayRouteTableAssociationsResultBuilder)?
              updates]) =>
      (new GetTransitGatewayRouteTableAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayRouteTableAssociationsResult._(
      {this.associations, this.nextToken})
      : super._();

  @override
  GetTransitGatewayRouteTableAssociationsResult rebuild(
          void Function(GetTransitGatewayRouteTableAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayRouteTableAssociationsResultBuilder toBuilder() =>
      new GetTransitGatewayRouteTableAssociationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayRouteTableAssociationsResult &&
        associations == other.associations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayRouteTableAssociationsResultBuilder
    implements
        Builder<GetTransitGatewayRouteTableAssociationsResult,
            GetTransitGatewayRouteTableAssociationsResultBuilder> {
  _$GetTransitGatewayRouteTableAssociationsResult? _$v;

  _i2.ListBuilder<TransitGatewayRouteTableAssociation>? _associations;
  _i2.ListBuilder<TransitGatewayRouteTableAssociation> get associations =>
      _$this._associations ??=
          new _i2.ListBuilder<TransitGatewayRouteTableAssociation>();
  set associations(
          _i2.ListBuilder<TransitGatewayRouteTableAssociation>? associations) =>
      _$this._associations = associations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetTransitGatewayRouteTableAssociationsResultBuilder();

  GetTransitGatewayRouteTableAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associations = $v.associations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayRouteTableAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayRouteTableAssociationsResult;
  }

  @override
  void update(
      void Function(GetTransitGatewayRouteTableAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayRouteTableAssociationsResult build() => _build();

  _$GetTransitGatewayRouteTableAssociationsResult _build() {
    _$GetTransitGatewayRouteTableAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayRouteTableAssociationsResult._(
              associations: _associations?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associations';
        _associations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayRouteTableAssociationsResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
