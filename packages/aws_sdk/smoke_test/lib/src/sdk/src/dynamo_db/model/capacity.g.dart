// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.capacity;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Capacity extends Capacity {
  @override
  final double? capacityUnits;
  @override
  final double? readCapacityUnits;
  @override
  final double? writeCapacityUnits;

  factory _$Capacity([void Function(CapacityBuilder)? updates]) =>
      (new CapacityBuilder()..update(updates))._build();

  _$Capacity._(
      {this.capacityUnits, this.readCapacityUnits, this.writeCapacityUnits})
      : super._();

  @override
  Capacity rebuild(void Function(CapacityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityBuilder toBuilder() => new CapacityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Capacity &&
        capacityUnits == other.capacityUnits &&
        readCapacityUnits == other.readCapacityUnits &&
        writeCapacityUnits == other.writeCapacityUnits;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, capacityUnits.hashCode), readCapacityUnits.hashCode),
        writeCapacityUnits.hashCode));
  }
}

class CapacityBuilder implements Builder<Capacity, CapacityBuilder> {
  _$Capacity? _$v;

  double? _capacityUnits;
  double? get capacityUnits => _$this._capacityUnits;
  set capacityUnits(double? capacityUnits) =>
      _$this._capacityUnits = capacityUnits;

  double? _readCapacityUnits;
  double? get readCapacityUnits => _$this._readCapacityUnits;
  set readCapacityUnits(double? readCapacityUnits) =>
      _$this._readCapacityUnits = readCapacityUnits;

  double? _writeCapacityUnits;
  double? get writeCapacityUnits => _$this._writeCapacityUnits;
  set writeCapacityUnits(double? writeCapacityUnits) =>
      _$this._writeCapacityUnits = writeCapacityUnits;

  CapacityBuilder() {
    Capacity._init(this);
  }

  CapacityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityUnits = $v.capacityUnits;
      _readCapacityUnits = $v.readCapacityUnits;
      _writeCapacityUnits = $v.writeCapacityUnits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Capacity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Capacity;
  }

  @override
  void update(void Function(CapacityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Capacity build() => _build();

  _$Capacity _build() {
    final _$result = _$v ??
        new _$Capacity._(
            capacityUnits: capacityUnits,
            readCapacityUnits: readCapacityUnits,
            writeCapacityUnits: writeCapacityUnits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
