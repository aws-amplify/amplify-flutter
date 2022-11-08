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
    return $jf($jc(0, readCapacityUnits.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
