// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.provisioned_throughput_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionedThroughputDescription
    extends ProvisionedThroughputDescription {
  @override
  final DateTime? lastIncreaseDateTime;
  @override
  final DateTime? lastDecreaseDateTime;
  @override
  final _i2.Int64? numberOfDecreasesToday;
  @override
  final _i2.Int64? readCapacityUnits;
  @override
  final _i2.Int64? writeCapacityUnits;

  factory _$ProvisionedThroughputDescription(
          [void Function(ProvisionedThroughputDescriptionBuilder)? updates]) =>
      (new ProvisionedThroughputDescriptionBuilder()..update(updates))._build();

  _$ProvisionedThroughputDescription._(
      {this.lastIncreaseDateTime,
      this.lastDecreaseDateTime,
      this.numberOfDecreasesToday,
      this.readCapacityUnits,
      this.writeCapacityUnits})
      : super._();

  @override
  ProvisionedThroughputDescription rebuild(
          void Function(ProvisionedThroughputDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionedThroughputDescriptionBuilder toBuilder() =>
      new ProvisionedThroughputDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionedThroughputDescription &&
        lastIncreaseDateTime == other.lastIncreaseDateTime &&
        lastDecreaseDateTime == other.lastDecreaseDateTime &&
        numberOfDecreasesToday == other.numberOfDecreasesToday &&
        readCapacityUnits == other.readCapacityUnits &&
        writeCapacityUnits == other.writeCapacityUnits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastIncreaseDateTime.hashCode);
    _$hash = $jc(_$hash, lastDecreaseDateTime.hashCode);
    _$hash = $jc(_$hash, numberOfDecreasesToday.hashCode);
    _$hash = $jc(_$hash, readCapacityUnits.hashCode);
    _$hash = $jc(_$hash, writeCapacityUnits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionedThroughputDescriptionBuilder
    implements
        Builder<ProvisionedThroughputDescription,
            ProvisionedThroughputDescriptionBuilder> {
  _$ProvisionedThroughputDescription? _$v;

  DateTime? _lastIncreaseDateTime;
  DateTime? get lastIncreaseDateTime => _$this._lastIncreaseDateTime;
  set lastIncreaseDateTime(DateTime? lastIncreaseDateTime) =>
      _$this._lastIncreaseDateTime = lastIncreaseDateTime;

  DateTime? _lastDecreaseDateTime;
  DateTime? get lastDecreaseDateTime => _$this._lastDecreaseDateTime;
  set lastDecreaseDateTime(DateTime? lastDecreaseDateTime) =>
      _$this._lastDecreaseDateTime = lastDecreaseDateTime;

  _i2.Int64? _numberOfDecreasesToday;
  _i2.Int64? get numberOfDecreasesToday => _$this._numberOfDecreasesToday;
  set numberOfDecreasesToday(_i2.Int64? numberOfDecreasesToday) =>
      _$this._numberOfDecreasesToday = numberOfDecreasesToday;

  _i2.Int64? _readCapacityUnits;
  _i2.Int64? get readCapacityUnits => _$this._readCapacityUnits;
  set readCapacityUnits(_i2.Int64? readCapacityUnits) =>
      _$this._readCapacityUnits = readCapacityUnits;

  _i2.Int64? _writeCapacityUnits;
  _i2.Int64? get writeCapacityUnits => _$this._writeCapacityUnits;
  set writeCapacityUnits(_i2.Int64? writeCapacityUnits) =>
      _$this._writeCapacityUnits = writeCapacityUnits;

  ProvisionedThroughputDescriptionBuilder() {
    ProvisionedThroughputDescription._init(this);
  }

  ProvisionedThroughputDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastIncreaseDateTime = $v.lastIncreaseDateTime;
      _lastDecreaseDateTime = $v.lastDecreaseDateTime;
      _numberOfDecreasesToday = $v.numberOfDecreasesToday;
      _readCapacityUnits = $v.readCapacityUnits;
      _writeCapacityUnits = $v.writeCapacityUnits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionedThroughputDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionedThroughputDescription;
  }

  @override
  void update(void Function(ProvisionedThroughputDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionedThroughputDescription build() => _build();

  _$ProvisionedThroughputDescription _build() {
    final _$result = _$v ??
        new _$ProvisionedThroughputDescription._(
            lastIncreaseDateTime: lastIncreaseDateTime,
            lastDecreaseDateTime: lastDecreaseDateTime,
            numberOfDecreasesToday: numberOfDecreasesToday,
            readCapacityUnits: readCapacityUnits,
            writeCapacityUnits: writeCapacityUnits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
