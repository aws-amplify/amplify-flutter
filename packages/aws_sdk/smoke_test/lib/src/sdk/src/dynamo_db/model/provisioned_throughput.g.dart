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
    var _$hash = 0;
    _$hash = $jc(_$hash, readCapacityUnits.hashCode);
    _$hash = $jc(_$hash, writeCapacityUnits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
