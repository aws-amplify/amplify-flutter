// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_route_table_propagations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayRouteTablePropagationsResult
    extends GetTransitGatewayRouteTablePropagationsResult {
  @override
  final _i2.BuiltList<TransitGatewayRouteTablePropagation>?
      transitGatewayRouteTablePropagations;
  @override
  final String? nextToken;

  factory _$GetTransitGatewayRouteTablePropagationsResult(
          [void Function(GetTransitGatewayRouteTablePropagationsResultBuilder)?
              updates]) =>
      (new GetTransitGatewayRouteTablePropagationsResultBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayRouteTablePropagationsResult._(
      {this.transitGatewayRouteTablePropagations, this.nextToken})
      : super._();

  @override
  GetTransitGatewayRouteTablePropagationsResult rebuild(
          void Function(GetTransitGatewayRouteTablePropagationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayRouteTablePropagationsResultBuilder toBuilder() =>
      new GetTransitGatewayRouteTablePropagationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayRouteTablePropagationsResult &&
        transitGatewayRouteTablePropagations ==
            other.transitGatewayRouteTablePropagations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTablePropagations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayRouteTablePropagationsResultBuilder
    implements
        Builder<GetTransitGatewayRouteTablePropagationsResult,
            GetTransitGatewayRouteTablePropagationsResultBuilder> {
  _$GetTransitGatewayRouteTablePropagationsResult? _$v;

  _i2.ListBuilder<TransitGatewayRouteTablePropagation>?
      _transitGatewayRouteTablePropagations;
  _i2.ListBuilder<TransitGatewayRouteTablePropagation>
      get transitGatewayRouteTablePropagations =>
          _$this._transitGatewayRouteTablePropagations ??=
              new _i2.ListBuilder<TransitGatewayRouteTablePropagation>();
  set transitGatewayRouteTablePropagations(
          _i2.ListBuilder<TransitGatewayRouteTablePropagation>?
              transitGatewayRouteTablePropagations) =>
      _$this._transitGatewayRouteTablePropagations =
          transitGatewayRouteTablePropagations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetTransitGatewayRouteTablePropagationsResultBuilder();

  GetTransitGatewayRouteTablePropagationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTablePropagations =
          $v.transitGatewayRouteTablePropagations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayRouteTablePropagationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayRouteTablePropagationsResult;
  }

  @override
  void update(
      void Function(GetTransitGatewayRouteTablePropagationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayRouteTablePropagationsResult build() => _build();

  _$GetTransitGatewayRouteTablePropagationsResult _build() {
    _$GetTransitGatewayRouteTablePropagationsResult _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayRouteTablePropagationsResult._(
              transitGatewayRouteTablePropagations:
                  _transitGatewayRouteTablePropagations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayRouteTablePropagations';
        _transitGatewayRouteTablePropagations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayRouteTablePropagationsResult',
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
