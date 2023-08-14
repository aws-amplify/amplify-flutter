// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_local_gateway_route_table_vpc_association_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocalGatewayRouteTableVpcAssociationResult
    extends DeleteLocalGatewayRouteTableVpcAssociationResult {
  @override
  final LocalGatewayRouteTableVpcAssociation?
      localGatewayRouteTableVpcAssociation;

  factory _$DeleteLocalGatewayRouteTableVpcAssociationResult(
          [void Function(
                  DeleteLocalGatewayRouteTableVpcAssociationResultBuilder)?
              updates]) =>
      (new DeleteLocalGatewayRouteTableVpcAssociationResultBuilder()
            ..update(updates))
          ._build();

  _$DeleteLocalGatewayRouteTableVpcAssociationResult._(
      {this.localGatewayRouteTableVpcAssociation})
      : super._();

  @override
  DeleteLocalGatewayRouteTableVpcAssociationResult rebuild(
          void Function(DeleteLocalGatewayRouteTableVpcAssociationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocalGatewayRouteTableVpcAssociationResultBuilder toBuilder() =>
      new DeleteLocalGatewayRouteTableVpcAssociationResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLocalGatewayRouteTableVpcAssociationResult &&
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

class DeleteLocalGatewayRouteTableVpcAssociationResultBuilder
    implements
        Builder<DeleteLocalGatewayRouteTableVpcAssociationResult,
            DeleteLocalGatewayRouteTableVpcAssociationResultBuilder> {
  _$DeleteLocalGatewayRouteTableVpcAssociationResult? _$v;

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

  DeleteLocalGatewayRouteTableVpcAssociationResultBuilder();

  DeleteLocalGatewayRouteTableVpcAssociationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVpcAssociation =
          $v.localGatewayRouteTableVpcAssociation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLocalGatewayRouteTableVpcAssociationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLocalGatewayRouteTableVpcAssociationResult;
  }

  @override
  void update(
      void Function(DeleteLocalGatewayRouteTableVpcAssociationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocalGatewayRouteTableVpcAssociationResult build() => _build();

  _$DeleteLocalGatewayRouteTableVpcAssociationResult _build() {
    _$DeleteLocalGatewayRouteTableVpcAssociationResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteLocalGatewayRouteTableVpcAssociationResult._(
              localGatewayRouteTableVpcAssociation:
                  _localGatewayRouteTableVpcAssociation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayRouteTableVpcAssociation';
        _localGatewayRouteTableVpcAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteLocalGatewayRouteTableVpcAssociationResult',
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
