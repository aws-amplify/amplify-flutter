// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.consumed_capacity;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumedCapacity extends ConsumedCapacity {
  @override
  final double? capacityUnits;
  @override
  final _i3.BuiltMap<String, _i2.Capacity>? globalSecondaryIndexes;
  @override
  final _i3.BuiltMap<String, _i2.Capacity>? localSecondaryIndexes;
  @override
  final double? readCapacityUnits;
  @override
  final _i2.Capacity? table;
  @override
  final String? tableName;
  @override
  final double? writeCapacityUnits;

  factory _$ConsumedCapacity(
          [void Function(ConsumedCapacityBuilder)? updates]) =>
      (new ConsumedCapacityBuilder()..update(updates))._build();

  _$ConsumedCapacity._(
      {this.capacityUnits,
      this.globalSecondaryIndexes,
      this.localSecondaryIndexes,
      this.readCapacityUnits,
      this.table,
      this.tableName,
      this.writeCapacityUnits})
      : super._();

  @override
  ConsumedCapacity rebuild(void Function(ConsumedCapacityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumedCapacityBuilder toBuilder() =>
      new ConsumedCapacityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumedCapacity &&
        capacityUnits == other.capacityUnits &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        localSecondaryIndexes == other.localSecondaryIndexes &&
        readCapacityUnits == other.readCapacityUnits &&
        table == other.table &&
        tableName == other.tableName &&
        writeCapacityUnits == other.writeCapacityUnits;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, capacityUnits.hashCode),
                            globalSecondaryIndexes.hashCode),
                        localSecondaryIndexes.hashCode),
                    readCapacityUnits.hashCode),
                table.hashCode),
            tableName.hashCode),
        writeCapacityUnits.hashCode));
  }
}

class ConsumedCapacityBuilder
    implements Builder<ConsumedCapacity, ConsumedCapacityBuilder> {
  _$ConsumedCapacity? _$v;

  double? _capacityUnits;
  double? get capacityUnits => _$this._capacityUnits;
  set capacityUnits(double? capacityUnits) =>
      _$this._capacityUnits = capacityUnits;

  _i3.MapBuilder<String, _i2.Capacity>? _globalSecondaryIndexes;
  _i3.MapBuilder<String, _i2.Capacity> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i3.MapBuilder<String, _i2.Capacity>();
  set globalSecondaryIndexes(
          _i3.MapBuilder<String, _i2.Capacity>? globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  _i3.MapBuilder<String, _i2.Capacity>? _localSecondaryIndexes;
  _i3.MapBuilder<String, _i2.Capacity> get localSecondaryIndexes =>
      _$this._localSecondaryIndexes ??=
          new _i3.MapBuilder<String, _i2.Capacity>();
  set localSecondaryIndexes(
          _i3.MapBuilder<String, _i2.Capacity>? localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  double? _readCapacityUnits;
  double? get readCapacityUnits => _$this._readCapacityUnits;
  set readCapacityUnits(double? readCapacityUnits) =>
      _$this._readCapacityUnits = readCapacityUnits;

  _i2.CapacityBuilder? _table;
  _i2.CapacityBuilder get table => _$this._table ??= new _i2.CapacityBuilder();
  set table(_i2.CapacityBuilder? table) => _$this._table = table;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  double? _writeCapacityUnits;
  double? get writeCapacityUnits => _$this._writeCapacityUnits;
  set writeCapacityUnits(double? writeCapacityUnits) =>
      _$this._writeCapacityUnits = writeCapacityUnits;

  ConsumedCapacityBuilder() {
    ConsumedCapacity._init(this);
  }

  ConsumedCapacityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityUnits = $v.capacityUnits;
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _localSecondaryIndexes = $v.localSecondaryIndexes?.toBuilder();
      _readCapacityUnits = $v.readCapacityUnits;
      _table = $v.table?.toBuilder();
      _tableName = $v.tableName;
      _writeCapacityUnits = $v.writeCapacityUnits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumedCapacity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsumedCapacity;
  }

  @override
  void update(void Function(ConsumedCapacityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumedCapacity build() => _build();

  _$ConsumedCapacity _build() {
    _$ConsumedCapacity _$result;
    try {
      _$result = _$v ??
          new _$ConsumedCapacity._(
              capacityUnits: capacityUnits,
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              localSecondaryIndexes: _localSecondaryIndexes?.build(),
              readCapacityUnits: readCapacityUnits,
              table: _table?.build(),
              tableName: tableName,
              writeCapacityUnits: writeCapacityUnits);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();
        _$failedField = 'localSecondaryIndexes';
        _localSecondaryIndexes?.build();

        _$failedField = 'table';
        _table?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConsumedCapacity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
