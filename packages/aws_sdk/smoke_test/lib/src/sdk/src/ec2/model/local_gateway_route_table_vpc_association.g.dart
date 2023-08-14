// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gateway_route_table_vpc_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalGatewayRouteTableVpcAssociation
    extends LocalGatewayRouteTableVpcAssociation {
  @override
  final String? localGatewayRouteTableVpcAssociationId;
  @override
  final String? localGatewayRouteTableId;
  @override
  final String? localGatewayRouteTableArn;
  @override
  final String? localGatewayId;
  @override
  final String? vpcId;
  @override
  final String? ownerId;
  @override
  final String? state;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$LocalGatewayRouteTableVpcAssociation(
          [void Function(LocalGatewayRouteTableVpcAssociationBuilder)?
              updates]) =>
      (new LocalGatewayRouteTableVpcAssociationBuilder()..update(updates))
          ._build();

  _$LocalGatewayRouteTableVpcAssociation._(
      {this.localGatewayRouteTableVpcAssociationId,
      this.localGatewayRouteTableId,
      this.localGatewayRouteTableArn,
      this.localGatewayId,
      this.vpcId,
      this.ownerId,
      this.state,
      this.tags})
      : super._();

  @override
  LocalGatewayRouteTableVpcAssociation rebuild(
          void Function(LocalGatewayRouteTableVpcAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalGatewayRouteTableVpcAssociationBuilder toBuilder() =>
      new LocalGatewayRouteTableVpcAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalGatewayRouteTableVpcAssociation &&
        localGatewayRouteTableVpcAssociationId ==
            other.localGatewayRouteTableVpcAssociationId &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        localGatewayRouteTableArn == other.localGatewayRouteTableArn &&
        localGatewayId == other.localGatewayId &&
        vpcId == other.vpcId &&
        ownerId == other.ownerId &&
        state == other.state &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableVpcAssociationId.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableArn.hashCode);
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalGatewayRouteTableVpcAssociationBuilder
    implements
        Builder<LocalGatewayRouteTableVpcAssociation,
            LocalGatewayRouteTableVpcAssociationBuilder> {
  _$LocalGatewayRouteTableVpcAssociation? _$v;

  String? _localGatewayRouteTableVpcAssociationId;
  String? get localGatewayRouteTableVpcAssociationId =>
      _$this._localGatewayRouteTableVpcAssociationId;
  set localGatewayRouteTableVpcAssociationId(
          String? localGatewayRouteTableVpcAssociationId) =>
      _$this._localGatewayRouteTableVpcAssociationId =
          localGatewayRouteTableVpcAssociationId;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  String? _localGatewayRouteTableArn;
  String? get localGatewayRouteTableArn => _$this._localGatewayRouteTableArn;
  set localGatewayRouteTableArn(String? localGatewayRouteTableArn) =>
      _$this._localGatewayRouteTableArn = localGatewayRouteTableArn;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  LocalGatewayRouteTableVpcAssociationBuilder();

  LocalGatewayRouteTableVpcAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVpcAssociationId =
          $v.localGatewayRouteTableVpcAssociationId;
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _localGatewayRouteTableArn = $v.localGatewayRouteTableArn;
      _localGatewayId = $v.localGatewayId;
      _vpcId = $v.vpcId;
      _ownerId = $v.ownerId;
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalGatewayRouteTableVpcAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalGatewayRouteTableVpcAssociation;
  }

  @override
  void update(
      void Function(LocalGatewayRouteTableVpcAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalGatewayRouteTableVpcAssociation build() => _build();

  _$LocalGatewayRouteTableVpcAssociation _build() {
    _$LocalGatewayRouteTableVpcAssociation _$result;
    try {
      _$result = _$v ??
          new _$LocalGatewayRouteTableVpcAssociation._(
              localGatewayRouteTableVpcAssociationId:
                  localGatewayRouteTableVpcAssociationId,
              localGatewayRouteTableId: localGatewayRouteTableId,
              localGatewayRouteTableArn: localGatewayRouteTableArn,
              localGatewayId: localGatewayId,
              vpcId: vpcId,
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
            r'LocalGatewayRouteTableVpcAssociation',
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
