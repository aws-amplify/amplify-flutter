// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.provisioned_throughput_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionedThroughputDescription
    extends ProvisionedThroughputDescription {
  @override
  final DateTime? lastDecreaseDateTime;
  @override
  final DateTime? lastIncreaseDateTime;
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
      {this.lastDecreaseDateTime,
      this.lastIncreaseDateTime,
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
        lastDecreaseDateTime == other.lastDecreaseDateTime &&
        lastIncreaseDateTime == other.lastIncreaseDateTime &&
        numberOfDecreasesToday == other.numberOfDecreasesToday &&
        readCapacityUnits == other.readCapacityUnits &&
        writeCapacityUnits == other.writeCapacityUnits;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, lastDecreaseDateTime.hashCode),
                    lastIncreaseDateTime.hashCode),
                numberOfDecreasesToday.hashCode),
            readCapacityUnits.hashCode),
        writeCapacityUnits.hashCode));
  }
}

class ProvisionedThroughputDescriptionBuilder
    implements
        Builder<ProvisionedThroughputDescription,
            ProvisionedThroughputDescriptionBuilder> {
  _$ProvisionedThroughputDescription? _$v;

  DateTime? _lastDecreaseDateTime;
  DateTime? get lastDecreaseDateTime => _$this._lastDecreaseDateTime;
  set lastDecreaseDateTime(DateTime? lastDecreaseDateTime) =>
      _$this._lastDecreaseDateTime = lastDecreaseDateTime;

  DateTime? _lastIncreaseDateTime;
  DateTime? get lastIncreaseDateTime => _$this._lastIncreaseDateTime;
  set lastIncreaseDateTime(DateTime? lastIncreaseDateTime) =>
      _$this._lastIncreaseDateTime = lastIncreaseDateTime;

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
      _lastDecreaseDateTime = $v.lastDecreaseDateTime;
      _lastIncreaseDateTime = $v.lastIncreaseDateTime;
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
            lastDecreaseDateTime: lastDecreaseDateTime,
            lastIncreaseDateTime: lastIncreaseDateTime,
            numberOfDecreasesToday: numberOfDecreasesToday,
            readCapacityUnits: readCapacityUnits,
            writeCapacityUnits: writeCapacityUnits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
