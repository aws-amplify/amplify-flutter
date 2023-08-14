// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_local_gateway_route_table_virtual_interface_group_association_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
    extends DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult {
  @override
  final LocalGatewayRouteTableVirtualInterfaceGroupAssociation?
      localGatewayRouteTableVirtualInterfaceGroupAssociation;

  factory _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult(
          [void Function(
                  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder)?
              updates]) =>
      (new DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder()
            ..update(updates))
          ._build();

  _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult._(
      {this.localGatewayRouteTableVirtualInterfaceGroupAssociation})
      : super._();

  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult rebuild(
          void Function(
                  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder
      toBuilder() =>
          new DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult &&
        localGatewayRouteTableVirtualInterfaceGroupAssociation ==
            other.localGatewayRouteTableVirtualInterfaceGroupAssociation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash,
        localGatewayRouteTableVirtualInterfaceGroupAssociation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder
    implements
        Builder<
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult,
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder> {
  _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult? _$v;

  LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder?
      _localGatewayRouteTableVirtualInterfaceGroupAssociation;
  LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder
      get localGatewayRouteTableVirtualInterfaceGroupAssociation => _$this
              ._localGatewayRouteTableVirtualInterfaceGroupAssociation ??=
          new LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder();
  set localGatewayRouteTableVirtualInterfaceGroupAssociation(
          LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder?
              localGatewayRouteTableVirtualInterfaceGroupAssociation) =>
      _$this._localGatewayRouteTableVirtualInterfaceGroupAssociation =
          localGatewayRouteTableVirtualInterfaceGroupAssociation;

  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder();

  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVirtualInterfaceGroupAssociation = $v
          .localGatewayRouteTableVirtualInterfaceGroupAssociation
          ?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult;
  }

  @override
  void update(
      void Function(
              DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult build() =>
      _build();

  _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
      _build() {
    _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
        _$result;
    try {
      _$result = _$v ??
          new _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
              ._(
              localGatewayRouteTableVirtualInterfaceGroupAssociation:
                  _localGatewayRouteTableVirtualInterfaceGroupAssociation
                      ?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField =
            'localGatewayRouteTableVirtualInterfaceGroupAssociation';
        _localGatewayRouteTableVirtualInterfaceGroupAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult',
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
