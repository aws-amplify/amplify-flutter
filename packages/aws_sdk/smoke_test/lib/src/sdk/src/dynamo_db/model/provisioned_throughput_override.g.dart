// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.provisioned_throughput_override;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionedThroughputOverride extends ProvisionedThroughputOverride {
  @override
  final _i2.Int64? readCapacityUnits;

  factory _$ProvisionedThroughputOverride(
          [void Function(ProvisionedThroughputOverrideBuilder)? updates]) =>
      (new ProvisionedThroughputOverrideBuilder()..update(updates))._build();

  _$ProvisionedThroughputOverride._({this.readCapacityUnits}) : super._();

  @override
  ProvisionedThroughputOverride rebuild(
          void Function(ProvisionedThroughputOverrideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionedThroughputOverrideBuilder toBuilder() =>
      new ProvisionedThroughputOverrideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionedThroughputOverride &&
        readCapacityUnits == other.readCapacityUnits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, readCapacityUnits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionedThroughputOverrideBuilder
    implements
        Builder<ProvisionedThroughputOverride,
            ProvisionedThroughputOverrideBuilder> {
  _$ProvisionedThroughputOverride? _$v;

  _i2.Int64? _readCapacityUnits;
  _i2.Int64? get readCapacityUnits => _$this._readCapacityUnits;
  set readCapacityUnits(_i2.Int64? readCapacityUnits) =>
      _$this._readCapacityUnits = readCapacityUnits;

  ProvisionedThroughputOverrideBuilder() {
    ProvisionedThroughputOverride._init(this);
  }

  ProvisionedThroughputOverrideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _readCapacityUnits = $v.readCapacityUnits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionedThroughputOverride other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionedThroughputOverride;
  }

  @override
  void update(void Function(ProvisionedThroughputOverrideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionedThroughputOverride build() => _build();

  _$ProvisionedThroughputOverride _build() {
    final _$result = _$v ??
        new _$ProvisionedThroughputOverride._(
            readCapacityUnits: readCapacityUnits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
