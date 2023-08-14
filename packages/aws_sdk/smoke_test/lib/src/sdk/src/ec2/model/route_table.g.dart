// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_table.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RouteTable extends RouteTable {
  @override
  final _i2.BuiltList<RouteTableAssociation>? associations;
  @override
  final _i2.BuiltList<PropagatingVgw>? propagatingVgws;
  @override
  final String? routeTableId;
  @override
  final _i2.BuiltList<Route>? routes;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? vpcId;
  @override
  final String? ownerId;

  factory _$RouteTable([void Function(RouteTableBuilder)? updates]) =>
      (new RouteTableBuilder()..update(updates))._build();

  _$RouteTable._(
      {this.associations,
      this.propagatingVgws,
      this.routeTableId,
      this.routes,
      this.tags,
      this.vpcId,
      this.ownerId})
      : super._();

  @override
  RouteTable rebuild(void Function(RouteTableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteTableBuilder toBuilder() => new RouteTableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RouteTable &&
        associations == other.associations &&
        propagatingVgws == other.propagatingVgws &&
        routeTableId == other.routeTableId &&
        routes == other.routes &&
        tags == other.tags &&
        vpcId == other.vpcId &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associations.hashCode);
    _$hash = $jc(_$hash, propagatingVgws.hashCode);
    _$hash = $jc(_$hash, routeTableId.hashCode);
    _$hash = $jc(_$hash, routes.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RouteTableBuilder implements Builder<RouteTable, RouteTableBuilder> {
  _$RouteTable? _$v;

  _i2.ListBuilder<RouteTableAssociation>? _associations;
  _i2.ListBuilder<RouteTableAssociation> get associations =>
      _$this._associations ??= new _i2.ListBuilder<RouteTableAssociation>();
  set associations(_i2.ListBuilder<RouteTableAssociation>? associations) =>
      _$this._associations = associations;

  _i2.ListBuilder<PropagatingVgw>? _propagatingVgws;
  _i2.ListBuilder<PropagatingVgw> get propagatingVgws =>
      _$this._propagatingVgws ??= new _i2.ListBuilder<PropagatingVgw>();
  set propagatingVgws(_i2.ListBuilder<PropagatingVgw>? propagatingVgws) =>
      _$this._propagatingVgws = propagatingVgws;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  _i2.ListBuilder<Route>? _routes;
  _i2.ListBuilder<Route> get routes =>
      _$this._routes ??= new _i2.ListBuilder<Route>();
  set routes(_i2.ListBuilder<Route>? routes) => _$this._routes = routes;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  RouteTableBuilder();

  RouteTableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associations = $v.associations?.toBuilder();
      _propagatingVgws = $v.propagatingVgws?.toBuilder();
      _routeTableId = $v.routeTableId;
      _routes = $v.routes?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _vpcId = $v.vpcId;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RouteTable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RouteTable;
  }

  @override
  void update(void Function(RouteTableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RouteTable build() => _build();

  _$RouteTable _build() {
    _$RouteTable _$result;
    try {
      _$result = _$v ??
          new _$RouteTable._(
              associations: _associations?.build(),
              propagatingVgws: _propagatingVgws?.build(),
              routeTableId: routeTableId,
              routes: _routes?.build(),
              tags: _tags?.build(),
              vpcId: vpcId,
              ownerId: ownerId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associations';
        _associations?.build();
        _$failedField = 'propagatingVgws';
        _propagatingVgws?.build();

        _$failedField = 'routes';
        _routes?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RouteTable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
