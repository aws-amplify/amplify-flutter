// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_table_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RouteTableAssociation extends RouteTableAssociation {
  @override
  final bool main;
  @override
  final String? routeTableAssociationId;
  @override
  final String? routeTableId;
  @override
  final String? subnetId;
  @override
  final String? gatewayId;
  @override
  final RouteTableAssociationState? associationState;

  factory _$RouteTableAssociation(
          [void Function(RouteTableAssociationBuilder)? updates]) =>
      (new RouteTableAssociationBuilder()..update(updates))._build();

  _$RouteTableAssociation._(
      {required this.main,
      this.routeTableAssociationId,
      this.routeTableId,
      this.subnetId,
      this.gatewayId,
      this.associationState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        main, r'RouteTableAssociation', 'main');
  }

  @override
  RouteTableAssociation rebuild(
          void Function(RouteTableAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteTableAssociationBuilder toBuilder() =>
      new RouteTableAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RouteTableAssociation &&
        main == other.main &&
        routeTableAssociationId == other.routeTableAssociationId &&
        routeTableId == other.routeTableId &&
        subnetId == other.subnetId &&
        gatewayId == other.gatewayId &&
        associationState == other.associationState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, routeTableAssociationId.hashCode);
    _$hash = $jc(_$hash, routeTableId.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, gatewayId.hashCode);
    _$hash = $jc(_$hash, associationState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RouteTableAssociationBuilder
    implements Builder<RouteTableAssociation, RouteTableAssociationBuilder> {
  _$RouteTableAssociation? _$v;

  bool? _main;
  bool? get main => _$this._main;
  set main(bool? main) => _$this._main = main;

  String? _routeTableAssociationId;
  String? get routeTableAssociationId => _$this._routeTableAssociationId;
  set routeTableAssociationId(String? routeTableAssociationId) =>
      _$this._routeTableAssociationId = routeTableAssociationId;

  String? _routeTableId;
  String? get routeTableId => _$this._routeTableId;
  set routeTableId(String? routeTableId) => _$this._routeTableId = routeTableId;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _gatewayId;
  String? get gatewayId => _$this._gatewayId;
  set gatewayId(String? gatewayId) => _$this._gatewayId = gatewayId;

  RouteTableAssociationStateBuilder? _associationState;
  RouteTableAssociationStateBuilder get associationState =>
      _$this._associationState ??= new RouteTableAssociationStateBuilder();
  set associationState(RouteTableAssociationStateBuilder? associationState) =>
      _$this._associationState = associationState;

  RouteTableAssociationBuilder() {
    RouteTableAssociation._init(this);
  }

  RouteTableAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _main = $v.main;
      _routeTableAssociationId = $v.routeTableAssociationId;
      _routeTableId = $v.routeTableId;
      _subnetId = $v.subnetId;
      _gatewayId = $v.gatewayId;
      _associationState = $v.associationState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RouteTableAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RouteTableAssociation;
  }

  @override
  void update(void Function(RouteTableAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RouteTableAssociation build() => _build();

  _$RouteTableAssociation _build() {
    _$RouteTableAssociation _$result;
    try {
      _$result = _$v ??
          new _$RouteTableAssociation._(
              main: BuiltValueNullFieldError.checkNotNull(
                  main, r'RouteTableAssociation', 'main'),
              routeTableAssociationId: routeTableAssociationId,
              routeTableId: routeTableId,
              subnetId: subnetId,
              gatewayId: gatewayId,
              associationState: _associationState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationState';
        _associationState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RouteTableAssociation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
