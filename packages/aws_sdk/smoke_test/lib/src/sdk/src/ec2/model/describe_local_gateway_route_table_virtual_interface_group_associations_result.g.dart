// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateway_route_table_virtual_interface_group_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
    extends DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult {
  @override
  final _i2.BuiltList<LocalGatewayRouteTableVirtualInterfaceGroupAssociation>?
      localGatewayRouteTableVirtualInterfaceGroupAssociations;
  @override
  final String? nextToken;

  factory _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult(
          [void Function(
                  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder)?
              updates]) =>
      (new DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult._(
      {this.localGatewayRouteTableVirtualInterfaceGroupAssociations,
      this.nextToken})
      : super._();

  @override
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult rebuild(
          void Function(
                  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder
      toBuilder() =>
          new DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult &&
        localGatewayRouteTableVirtualInterfaceGroupAssociations ==
            other.localGatewayRouteTableVirtualInterfaceGroupAssociations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash,
        localGatewayRouteTableVirtualInterfaceGroupAssociations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder
    implements
        Builder<
            DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult,
            DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder> {
  _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult? _$v;

  _i2.ListBuilder<LocalGatewayRouteTableVirtualInterfaceGroupAssociation>?
      _localGatewayRouteTableVirtualInterfaceGroupAssociations;
  _i2.ListBuilder<LocalGatewayRouteTableVirtualInterfaceGroupAssociation>
      get localGatewayRouteTableVirtualInterfaceGroupAssociations =>
          _$this._localGatewayRouteTableVirtualInterfaceGroupAssociations ??=
              new _i2.ListBuilder<
                  LocalGatewayRouteTableVirtualInterfaceGroupAssociation>();
  set localGatewayRouteTableVirtualInterfaceGroupAssociations(
          _i2.ListBuilder<
                  LocalGatewayRouteTableVirtualInterfaceGroupAssociation>?
              localGatewayRouteTableVirtualInterfaceGroupAssociations) =>
      _$this._localGatewayRouteTableVirtualInterfaceGroupAssociations =
          localGatewayRouteTableVirtualInterfaceGroupAssociations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder();

  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVirtualInterfaceGroupAssociations = $v
          .localGatewayRouteTableVirtualInterfaceGroupAssociations
          ?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult;
  }

  @override
  void update(
      void Function(
              DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
      build() => _build();

  _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
      _build() {
    _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
        _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
              ._(
              localGatewayRouteTableVirtualInterfaceGroupAssociations:
                  _localGatewayRouteTableVirtualInterfaceGroupAssociations
                      ?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField =
            'localGatewayRouteTableVirtualInterfaceGroupAssociations';
        _localGatewayRouteTableVirtualInterfaceGroupAssociations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult',
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
