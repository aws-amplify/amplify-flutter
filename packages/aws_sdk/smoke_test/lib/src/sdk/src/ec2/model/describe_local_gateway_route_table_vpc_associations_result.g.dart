// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateway_route_table_vpc_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayRouteTableVpcAssociationsResult
    extends DescribeLocalGatewayRouteTableVpcAssociationsResult {
  @override
  final _i2.BuiltList<LocalGatewayRouteTableVpcAssociation>?
      localGatewayRouteTableVpcAssociations;
  @override
  final String? nextToken;

  factory _$DescribeLocalGatewayRouteTableVpcAssociationsResult(
          [void Function(
                  DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder)?
              updates]) =>
      (new DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeLocalGatewayRouteTableVpcAssociationsResult._(
      {this.localGatewayRouteTableVpcAssociations, this.nextToken})
      : super._();

  @override
  DescribeLocalGatewayRouteTableVpcAssociationsResult rebuild(
          void Function(
                  DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder toBuilder() =>
      new DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewayRouteTableVpcAssociationsResult &&
        localGatewayRouteTableVpcAssociations ==
            other.localGatewayRouteTableVpcAssociations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableVpcAssociations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder
    implements
        Builder<DescribeLocalGatewayRouteTableVpcAssociationsResult,
            DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder> {
  _$DescribeLocalGatewayRouteTableVpcAssociationsResult? _$v;

  _i2.ListBuilder<LocalGatewayRouteTableVpcAssociation>?
      _localGatewayRouteTableVpcAssociations;
  _i2.ListBuilder<LocalGatewayRouteTableVpcAssociation>
      get localGatewayRouteTableVpcAssociations =>
          _$this._localGatewayRouteTableVpcAssociations ??=
              new _i2.ListBuilder<LocalGatewayRouteTableVpcAssociation>();
  set localGatewayRouteTableVpcAssociations(
          _i2.ListBuilder<LocalGatewayRouteTableVpcAssociation>?
              localGatewayRouteTableVpcAssociations) =>
      _$this._localGatewayRouteTableVpcAssociations =
          localGatewayRouteTableVpcAssociations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder();

  DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVpcAssociations =
          $v.localGatewayRouteTableVpcAssociations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewayRouteTableVpcAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewayRouteTableVpcAssociationsResult;
  }

  @override
  void update(
      void Function(DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayRouteTableVpcAssociationsResult build() => _build();

  _$DescribeLocalGatewayRouteTableVpcAssociationsResult _build() {
    _$DescribeLocalGatewayRouteTableVpcAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayRouteTableVpcAssociationsResult._(
              localGatewayRouteTableVpcAssociations:
                  _localGatewayRouteTableVpcAssociations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayRouteTableVpcAssociations';
        _localGatewayRouteTableVpcAssociations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayRouteTableVpcAssociationsResult',
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
