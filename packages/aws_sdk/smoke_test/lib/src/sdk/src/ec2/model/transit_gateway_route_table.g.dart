// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_gateway_route_table.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRouteTable extends TransitGatewayRouteTable {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final String? transitGatewayId;
  @override
  final TransitGatewayRouteTableState? state;
  @override
  final bool defaultAssociationRouteTable;
  @override
  final bool defaultPropagationRouteTable;
  @override
  final DateTime? creationTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TransitGatewayRouteTable(
          [void Function(TransitGatewayRouteTableBuilder)? updates]) =>
      (new TransitGatewayRouteTableBuilder()..update(updates))._build();

  _$TransitGatewayRouteTable._(
      {this.transitGatewayRouteTableId,
      this.transitGatewayId,
      this.state,
      required this.defaultAssociationRouteTable,
      required this.defaultPropagationRouteTable,
      this.creationTime,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(defaultAssociationRouteTable,
        r'TransitGatewayRouteTable', 'defaultAssociationRouteTable');
    BuiltValueNullFieldError.checkNotNull(defaultPropagationRouteTable,
        r'TransitGatewayRouteTable', 'defaultPropagationRouteTable');
  }

  @override
  TransitGatewayRouteTable rebuild(
          void Function(TransitGatewayRouteTableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRouteTableBuilder toBuilder() =>
      new TransitGatewayRouteTableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRouteTable &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        transitGatewayId == other.transitGatewayId &&
        state == other.state &&
        defaultAssociationRouteTable == other.defaultAssociationRouteTable &&
        defaultPropagationRouteTable == other.defaultPropagationRouteTable &&
        creationTime == other.creationTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, defaultAssociationRouteTable.hashCode);
    _$hash = $jc(_$hash, defaultPropagationRouteTable.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRouteTableBuilder
    implements
        Builder<TransitGatewayRouteTable, TransitGatewayRouteTableBuilder> {
  _$TransitGatewayRouteTable? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  TransitGatewayRouteTableState? _state;
  TransitGatewayRouteTableState? get state => _$this._state;
  set state(TransitGatewayRouteTableState? state) => _$this._state = state;

  bool? _defaultAssociationRouteTable;
  bool? get defaultAssociationRouteTable =>
      _$this._defaultAssociationRouteTable;
  set defaultAssociationRouteTable(bool? defaultAssociationRouteTable) =>
      _$this._defaultAssociationRouteTable = defaultAssociationRouteTable;

  bool? _defaultPropagationRouteTable;
  bool? get defaultPropagationRouteTable =>
      _$this._defaultPropagationRouteTable;
  set defaultPropagationRouteTable(bool? defaultPropagationRouteTable) =>
      _$this._defaultPropagationRouteTable = defaultPropagationRouteTable;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TransitGatewayRouteTableBuilder() {
    TransitGatewayRouteTable._init(this);
  }

  TransitGatewayRouteTableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _transitGatewayId = $v.transitGatewayId;
      _state = $v.state;
      _defaultAssociationRouteTable = $v.defaultAssociationRouteTable;
      _defaultPropagationRouteTable = $v.defaultPropagationRouteTable;
      _creationTime = $v.creationTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRouteTable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRouteTable;
  }

  @override
  void update(void Function(TransitGatewayRouteTableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRouteTable build() => _build();

  _$TransitGatewayRouteTable _build() {
    _$TransitGatewayRouteTable _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayRouteTable._(
              transitGatewayRouteTableId: transitGatewayRouteTableId,
              transitGatewayId: transitGatewayId,
              state: state,
              defaultAssociationRouteTable:
                  BuiltValueNullFieldError.checkNotNull(
                      defaultAssociationRouteTable,
                      r'TransitGatewayRouteTable',
                      'defaultAssociationRouteTable'),
              defaultPropagationRouteTable:
                  BuiltValueNullFieldError.checkNotNull(
                      defaultPropagationRouteTable,
                      r'TransitGatewayRouteTable',
                      'defaultPropagationRouteTable'),
              creationTime: creationTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayRouteTable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
