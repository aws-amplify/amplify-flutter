// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_local_gateway_route_table_vpc_association_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLocalGatewayRouteTableVpcAssociationResult
    extends CreateLocalGatewayRouteTableVpcAssociationResult {
  @override
  final LocalGatewayRouteTableVpcAssociation?
      localGatewayRouteTableVpcAssociation;

  factory _$CreateLocalGatewayRouteTableVpcAssociationResult(
          [void Function(
                  CreateLocalGatewayRouteTableVpcAssociationResultBuilder)?
              updates]) =>
      (new CreateLocalGatewayRouteTableVpcAssociationResultBuilder()
            ..update(updates))
          ._build();

  _$CreateLocalGatewayRouteTableVpcAssociationResult._(
      {this.localGatewayRouteTableVpcAssociation})
      : super._();

  @override
  CreateLocalGatewayRouteTableVpcAssociationResult rebuild(
          void Function(CreateLocalGatewayRouteTableVpcAssociationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLocalGatewayRouteTableVpcAssociationResultBuilder toBuilder() =>
      new CreateLocalGatewayRouteTableVpcAssociationResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLocalGatewayRouteTableVpcAssociationResult &&
        localGatewayRouteTableVpcAssociation ==
            other.localGatewayRouteTableVpcAssociation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableVpcAssociation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLocalGatewayRouteTableVpcAssociationResultBuilder
    implements
        Builder<CreateLocalGatewayRouteTableVpcAssociationResult,
            CreateLocalGatewayRouteTableVpcAssociationResultBuilder> {
  _$CreateLocalGatewayRouteTableVpcAssociationResult? _$v;

  LocalGatewayRouteTableVpcAssociationBuilder?
      _localGatewayRouteTableVpcAssociation;
  LocalGatewayRouteTableVpcAssociationBuilder
      get localGatewayRouteTableVpcAssociation =>
          _$this._localGatewayRouteTableVpcAssociation ??=
              new LocalGatewayRouteTableVpcAssociationBuilder();
  set localGatewayRouteTableVpcAssociation(
          LocalGatewayRouteTableVpcAssociationBuilder?
              localGatewayRouteTableVpcAssociation) =>
      _$this._localGatewayRouteTableVpcAssociation =
          localGatewayRouteTableVpcAssociation;

  CreateLocalGatewayRouteTableVpcAssociationResultBuilder();

  CreateLocalGatewayRouteTableVpcAssociationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVpcAssociation =
          $v.localGatewayRouteTableVpcAssociation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLocalGatewayRouteTableVpcAssociationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLocalGatewayRouteTableVpcAssociationResult;
  }

  @override
  void update(
      void Function(CreateLocalGatewayRouteTableVpcAssociationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLocalGatewayRouteTableVpcAssociationResult build() => _build();

  _$CreateLocalGatewayRouteTableVpcAssociationResult _build() {
    _$CreateLocalGatewayRouteTableVpcAssociationResult _$result;
    try {
      _$result = _$v ??
          new _$CreateLocalGatewayRouteTableVpcAssociationResult._(
              localGatewayRouteTableVpcAssociation:
                  _localGatewayRouteTableVpcAssociation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayRouteTableVpcAssociation';
        _localGatewayRouteTableVpcAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLocalGatewayRouteTableVpcAssociationResult',
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
