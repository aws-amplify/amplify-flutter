// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.batch_describe_type_configurations_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchDescribeTypeConfigurationsInput
    extends BatchDescribeTypeConfigurationsInput {
  @override
  final _i4.BuiltList<_i3.TypeConfigurationIdentifier>
      typeConfigurationIdentifiers;

  factory _$BatchDescribeTypeConfigurationsInput(
          [void Function(BatchDescribeTypeConfigurationsInputBuilder)?
              updates]) =>
      (new BatchDescribeTypeConfigurationsInputBuilder()..update(updates))
          ._build();

  _$BatchDescribeTypeConfigurationsInput._(
      {required this.typeConfigurationIdentifiers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        typeConfigurationIdentifiers,
        r'BatchDescribeTypeConfigurationsInput',
        'typeConfigurationIdentifiers');
  }

  @override
  BatchDescribeTypeConfigurationsInput rebuild(
          void Function(BatchDescribeTypeConfigurationsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchDescribeTypeConfigurationsInputBuilder toBuilder() =>
      new BatchDescribeTypeConfigurationsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchDescribeTypeConfigurationsInput &&
        typeConfigurationIdentifiers == other.typeConfigurationIdentifiers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeConfigurationIdentifiers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchDescribeTypeConfigurationsInputBuilder
    implements
        Builder<BatchDescribeTypeConfigurationsInput,
            BatchDescribeTypeConfigurationsInputBuilder> {
  _$BatchDescribeTypeConfigurationsInput? _$v;

  _i4.ListBuilder<_i3.TypeConfigurationIdentifier>?
      _typeConfigurationIdentifiers;
  _i4.ListBuilder<_i3.TypeConfigurationIdentifier>
      get typeConfigurationIdentifiers =>
          _$this._typeConfigurationIdentifiers ??=
              new _i4.ListBuilder<_i3.TypeConfigurationIdentifier>();
  set typeConfigurationIdentifiers(
          _i4.ListBuilder<_i3.TypeConfigurationIdentifier>?
              typeConfigurationIdentifiers) =>
      _$this._typeConfigurationIdentifiers = typeConfigurationIdentifiers;

  BatchDescribeTypeConfigurationsInputBuilder() {
    BatchDescribeTypeConfigurationsInput._init(this);
  }

  BatchDescribeTypeConfigurationsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeConfigurationIdentifiers =
          $v.typeConfigurationIdentifiers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchDescribeTypeConfigurationsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchDescribeTypeConfigurationsInput;
  }

  @override
  void update(
      void Function(BatchDescribeTypeConfigurationsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchDescribeTypeConfigurationsInput build() => _build();

  _$BatchDescribeTypeConfigurationsInput _build() {
    _$BatchDescribeTypeConfigurationsInput _$result;
    try {
      _$result = _$v ??
          new _$BatchDescribeTypeConfigurationsInput._(
              typeConfigurationIdentifiers:
                  typeConfigurationIdentifiers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'typeConfigurationIdentifiers';
        typeConfigurationIdentifiers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchDescribeTypeConfigurationsInput',
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
