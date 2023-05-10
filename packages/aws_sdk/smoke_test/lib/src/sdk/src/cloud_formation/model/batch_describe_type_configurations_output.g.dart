// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.batch_describe_type_configurations_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchDescribeTypeConfigurationsOutput
    extends BatchDescribeTypeConfigurationsOutput {
  @override
  final _i5.BuiltList<_i2.BatchDescribeTypeConfigurationsError>? errors;
  @override
  final _i5.BuiltList<_i3.TypeConfigurationIdentifier>?
      unprocessedTypeConfigurations;
  @override
  final _i5.BuiltList<_i4.TypeConfigurationDetails>? typeConfigurations;

  factory _$BatchDescribeTypeConfigurationsOutput(
          [void Function(BatchDescribeTypeConfigurationsOutputBuilder)?
              updates]) =>
      (new BatchDescribeTypeConfigurationsOutputBuilder()..update(updates))
          ._build();

  _$BatchDescribeTypeConfigurationsOutput._(
      {this.errors,
      this.unprocessedTypeConfigurations,
      this.typeConfigurations})
      : super._();

  @override
  BatchDescribeTypeConfigurationsOutput rebuild(
          void Function(BatchDescribeTypeConfigurationsOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchDescribeTypeConfigurationsOutputBuilder toBuilder() =>
      new BatchDescribeTypeConfigurationsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchDescribeTypeConfigurationsOutput &&
        errors == other.errors &&
        unprocessedTypeConfigurations == other.unprocessedTypeConfigurations &&
        typeConfigurations == other.typeConfigurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, unprocessedTypeConfigurations.hashCode);
    _$hash = $jc(_$hash, typeConfigurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchDescribeTypeConfigurationsOutputBuilder
    implements
        Builder<BatchDescribeTypeConfigurationsOutput,
            BatchDescribeTypeConfigurationsOutputBuilder> {
  _$BatchDescribeTypeConfigurationsOutput? _$v;

  _i5.ListBuilder<_i2.BatchDescribeTypeConfigurationsError>? _errors;
  _i5.ListBuilder<_i2.BatchDescribeTypeConfigurationsError> get errors =>
      _$this._errors ??=
          new _i5.ListBuilder<_i2.BatchDescribeTypeConfigurationsError>();
  set errors(
          _i5.ListBuilder<_i2.BatchDescribeTypeConfigurationsError>? errors) =>
      _$this._errors = errors;

  _i5.ListBuilder<_i3.TypeConfigurationIdentifier>?
      _unprocessedTypeConfigurations;
  _i5.ListBuilder<_i3.TypeConfigurationIdentifier>
      get unprocessedTypeConfigurations =>
          _$this._unprocessedTypeConfigurations ??=
              new _i5.ListBuilder<_i3.TypeConfigurationIdentifier>();
  set unprocessedTypeConfigurations(
          _i5.ListBuilder<_i3.TypeConfigurationIdentifier>?
              unprocessedTypeConfigurations) =>
      _$this._unprocessedTypeConfigurations = unprocessedTypeConfigurations;

  _i5.ListBuilder<_i4.TypeConfigurationDetails>? _typeConfigurations;
  _i5.ListBuilder<_i4.TypeConfigurationDetails> get typeConfigurations =>
      _$this._typeConfigurations ??=
          new _i5.ListBuilder<_i4.TypeConfigurationDetails>();
  set typeConfigurations(
          _i5.ListBuilder<_i4.TypeConfigurationDetails>? typeConfigurations) =>
      _$this._typeConfigurations = typeConfigurations;

  BatchDescribeTypeConfigurationsOutputBuilder() {
    BatchDescribeTypeConfigurationsOutput._init(this);
  }

  BatchDescribeTypeConfigurationsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors?.toBuilder();
      _unprocessedTypeConfigurations =
          $v.unprocessedTypeConfigurations?.toBuilder();
      _typeConfigurations = $v.typeConfigurations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchDescribeTypeConfigurationsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchDescribeTypeConfigurationsOutput;
  }

  @override
  void update(
      void Function(BatchDescribeTypeConfigurationsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchDescribeTypeConfigurationsOutput build() => _build();

  _$BatchDescribeTypeConfigurationsOutput _build() {
    _$BatchDescribeTypeConfigurationsOutput _$result;
    try {
      _$result = _$v ??
          new _$BatchDescribeTypeConfigurationsOutput._(
              errors: _errors?.build(),
              unprocessedTypeConfigurations:
                  _unprocessedTypeConfigurations?.build(),
              typeConfigurations: _typeConfigurations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
        _$failedField = 'unprocessedTypeConfigurations';
        _unprocessedTypeConfigurations?.build();
        _$failedField = 'typeConfigurations';
        _typeConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchDescribeTypeConfigurationsOutput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
