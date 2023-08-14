// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_local_gateway_route_table_virtual_interface_group_association_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
    extends CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult {
  @override
  final LocalGatewayRouteTableVirtualInterfaceGroupAssociation?
      localGatewayRouteTableVirtualInterfaceGroupAssociation;

  factory _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult(
          [void Function(
                  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder)?
              updates]) =>
      (new CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder()
            ..update(updates))
          ._build();

  _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult._(
      {this.localGatewayRouteTableVirtualInterfaceGroupAssociation})
      : super._();

  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult rebuild(
          void Function(
                  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder
      toBuilder() =>
          new CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult &&
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

class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder
    implements
        Builder<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult,
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder> {
  _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult? _$v;

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

  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder();

  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder
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
      CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult;
  }

  @override
  void update(
      void Function(
              CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult build() =>
      _build();

  _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
      _build() {
    _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
        _$result;
    try {
      _$result = _$v ??
          new _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
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
            r'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult',
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
