// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gateway_route_table_virtual_interface_group_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    extends LocalGatewayRouteTableVirtualInterfaceGroupAssociation {
  @override
  final String? localGatewayRouteTableVirtualInterfaceGroupAssociationId;
  @override
  final String? localGatewayVirtualInterfaceGroupId;
  @override
  final String? localGatewayId;
  @override
  final String? localGatewayRouteTableId;
  @override
  final String? localGatewayRouteTableArn;
  @override
  final String? ownerId;
  @override
  final String? state;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation(
          [void Function(
                  LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder)?
              updates]) =>
      (new LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder()
            ..update(updates))
          ._build();

  _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation._(
      {this.localGatewayRouteTableVirtualInterfaceGroupAssociationId,
      this.localGatewayVirtualInterfaceGroupId,
      this.localGatewayId,
      this.localGatewayRouteTableId,
      this.localGatewayRouteTableArn,
      this.ownerId,
      this.state,
      this.tags})
      : super._();

  @override
  LocalGatewayRouteTableVirtualInterfaceGroupAssociation rebuild(
          void Function(
                  LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder toBuilder() =>
      new LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalGatewayRouteTableVirtualInterfaceGroupAssociation &&
        localGatewayRouteTableVirtualInterfaceGroupAssociationId ==
            other.localGatewayRouteTableVirtualInterfaceGroupAssociationId &&
        localGatewayVirtualInterfaceGroupId ==
            other.localGatewayVirtualInterfaceGroupId &&
        localGatewayId == other.localGatewayId &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        localGatewayRouteTableArn == other.localGatewayRouteTableArn &&
        ownerId == other.ownerId &&
        state == other.state &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash,
        localGatewayRouteTableVirtualInterfaceGroupAssociationId.hashCode);
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceGroupId.hashCode);
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableArn.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder
    implements
        Builder<LocalGatewayRouteTableVirtualInterfaceGroupAssociation,
            LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder> {
  _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation? _$v;

  String? _localGatewayRouteTableVirtualInterfaceGroupAssociationId;
  String? get localGatewayRouteTableVirtualInterfaceGroupAssociationId =>
      _$this._localGatewayRouteTableVirtualInterfaceGroupAssociationId;
  set localGatewayRouteTableVirtualInterfaceGroupAssociationId(
          String? localGatewayRouteTableVirtualInterfaceGroupAssociationId) =>
      _$this._localGatewayRouteTableVirtualInterfaceGroupAssociationId =
          localGatewayRouteTableVirtualInterfaceGroupAssociationId;

  String? _localGatewayVirtualInterfaceGroupId;
  String? get localGatewayVirtualInterfaceGroupId =>
      _$this._localGatewayVirtualInterfaceGroupId;
  set localGatewayVirtualInterfaceGroupId(
          String? localGatewayVirtualInterfaceGroupId) =>
      _$this._localGatewayVirtualInterfaceGroupId =
          localGatewayVirtualInterfaceGroupId;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  String? _localGatewayRouteTableArn;
  String? get localGatewayRouteTableArn => _$this._localGatewayRouteTableArn;
  set localGatewayRouteTableArn(String? localGatewayRouteTableArn) =>
      _$this._localGatewayRouteTableArn = localGatewayRouteTableArn;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder();

  LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVirtualInterfaceGroupAssociationId =
          $v.localGatewayRouteTableVirtualInterfaceGroupAssociationId;
      _localGatewayVirtualInterfaceGroupId =
          $v.localGatewayVirtualInterfaceGroupId;
      _localGatewayId = $v.localGatewayId;
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _localGatewayRouteTableArn = $v.localGatewayRouteTableArn;
      _ownerId = $v.ownerId;
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalGatewayRouteTableVirtualInterfaceGroupAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation;
  }

  @override
  void update(
      void Function(
              LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalGatewayRouteTableVirtualInterfaceGroupAssociation build() => _build();

  _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation _build() {
    _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation _$result;
    try {
      _$result = _$v ??
          new _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation._(
              localGatewayRouteTableVirtualInterfaceGroupAssociationId:
                  localGatewayRouteTableVirtualInterfaceGroupAssociationId,
              localGatewayVirtualInterfaceGroupId:
                  localGatewayVirtualInterfaceGroupId,
              localGatewayId: localGatewayId,
              localGatewayRouteTableId: localGatewayRouteTableId,
              localGatewayRouteTableArn: localGatewayRouteTableArn,
              ownerId: ownerId,
              state: state,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalGatewayRouteTableVirtualInterfaceGroupAssociation',
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
