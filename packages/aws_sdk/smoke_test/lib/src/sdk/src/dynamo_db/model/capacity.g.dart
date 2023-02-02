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
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityUnits.hashCode);
    _$hash = $jc(_$hash, readCapacityUnits.hashCode);
    _$hash = $jc(_$hash, writeCapacityUnits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
