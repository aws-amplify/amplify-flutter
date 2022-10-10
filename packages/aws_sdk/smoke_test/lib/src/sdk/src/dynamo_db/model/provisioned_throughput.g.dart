// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.provisioned_throughput;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionedThroughput extends ProvisionedThroughput {
  @override
  final _i2.Int64 readCapacityUnits;
  @override
  final _i2.Int64 writeCapacityUnits;

  factory _$ProvisionedThroughput(
          [void Function(ProvisionedThroughputBuilder)? updates]) =>
      (new ProvisionedThroughputBuilder()..update(updates))._build();

  _$ProvisionedThroughput._(
      {required this.readCapacityUnits, required this.writeCapacityUnits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        readCapacityUnits, r'ProvisionedThroughput', 'readCapacityUnits');
    BuiltValueNullFieldError.checkNotNull(
        writeCapacityUnits, r'ProvisionedThroughput', 'writeCapacityUnits');
  }

  @override
  ProvisionedThroughput rebuild(
          void Function(ProvisionedThroughputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionedThroughputBuilder toBuilder() =>
      new ProvisionedThroughputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionedThroughput &&
        readCapacityUnits == other.readCapacityUnits &&
        writeCapacityUnits == other.writeCapacityUnits;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, readCapacityUnits.hashCode), writeCapacityUnits.hashCode));
  }
}

class ProvisionedThroughputBuilder
    implements Builder<ProvisionedThroughput, ProvisionedThroughputBuilder> {
  _$ProvisionedThroughput? _$v;

  _i2.Int64? _readCapacityUnits;
  _i2.Int64? get readCapacityUnits => _$this._readCapacityUnits;
  set readCapacityUnits(_i2.Int64? readCapacityUnits) =>
      _$this._readCapacityUnits = readCapacityUnits;

  _i2.Int64? _writeCapacityUnits;
  _i2.Int64? get writeCapacityUnits => _$this._writeCapacityUnits;
  set writeCapacityUnits(_i2.Int64? writeCapacityUnits) =>
      _$this._writeCapacityUnits = writeCapacityUnits;

  ProvisionedThroughputBuilder() {
    ProvisionedThroughput._init(this);
  }

  ProvisionedThroughputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _readCapacityUnits = $v.readCapacityUnits;
      _writeCapacityUnits = $v.writeCapacityUnits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionedThroughput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionedThroughput;
  }

  @override
  void update(void Function(ProvisionedThroughputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionedThroughput build() => _build();

  _$ProvisionedThroughput _build() {
    final _$result = _$v ??
        new _$ProvisionedThroughput._(
            readCapacityUnits: BuiltValueNullFieldError.checkNotNull(
                readCapacityUnits,
                r'ProvisionedThroughput',
                'readCapacityUnits'),
            writeCapacityUnits: BuiltValueNullFieldError.checkNotNull(
                writeCapacityUnits,
                r'ProvisionedThroughput',
                'writeCapacityUnits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
