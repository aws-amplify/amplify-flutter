// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_describe_type_configurations_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchDescribeTypeConfigurationsOutput
    extends BatchDescribeTypeConfigurationsOutput {
  @override
  final _i2.BuiltList<BatchDescribeTypeConfigurationsError>? errors;
  @override
  final _i2.BuiltList<TypeConfigurationIdentifier>?
      unprocessedTypeConfigurations;
  @override
  final _i2.BuiltList<TypeConfigurationDetails>? typeConfigurations;

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

  _i2.ListBuilder<BatchDescribeTypeConfigurationsError>? _errors;
  _i2.ListBuilder<BatchDescribeTypeConfigurationsError> get errors =>
      _$this._errors ??=
          new _i2.ListBuilder<BatchDescribeTypeConfigurationsError>();
  set errors(_i2.ListBuilder<BatchDescribeTypeConfigurationsError>? errors) =>
      _$this._errors = errors;

  _i2.ListBuilder<TypeConfigurationIdentifier>? _unprocessedTypeConfigurations;
  _i2.ListBuilder<TypeConfigurationIdentifier>
      get unprocessedTypeConfigurations =>
          _$this._unprocessedTypeConfigurations ??=
              new _i2.ListBuilder<TypeConfigurationIdentifier>();
  set unprocessedTypeConfigurations(
          _i2.ListBuilder<TypeConfigurationIdentifier>?
              unprocessedTypeConfigurations) =>
      _$this._unprocessedTypeConfigurations = unprocessedTypeConfigurations;

  _i2.ListBuilder<TypeConfigurationDetails>? _typeConfigurations;
  _i2.ListBuilder<TypeConfigurationDetails> get typeConfigurations =>
      _$this._typeConfigurations ??=
          new _i2.ListBuilder<TypeConfigurationDetails>();
  set typeConfigurations(
          _i2.ListBuilder<TypeConfigurationDetails>? typeConfigurations) =>
      _$this._typeConfigurations = typeConfigurations;

  BatchDescribeTypeConfigurationsOutputBuilder();

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