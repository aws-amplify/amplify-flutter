// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.batch_describe_type_configurations_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchDescribeTypeConfigurationsError
    extends BatchDescribeTypeConfigurationsError {
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final _i2.TypeConfigurationIdentifier? typeConfigurationIdentifier;

  factory _$BatchDescribeTypeConfigurationsError(
          [void Function(BatchDescribeTypeConfigurationsErrorBuilder)?
              updates]) =>
      (new BatchDescribeTypeConfigurationsErrorBuilder()..update(updates))
          ._build();

  _$BatchDescribeTypeConfigurationsError._(
      {this.errorCode, this.errorMessage, this.typeConfigurationIdentifier})
      : super._();

  @override
  BatchDescribeTypeConfigurationsError rebuild(
          void Function(BatchDescribeTypeConfigurationsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchDescribeTypeConfigurationsErrorBuilder toBuilder() =>
      new BatchDescribeTypeConfigurationsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchDescribeTypeConfigurationsError &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        typeConfigurationIdentifier == other.typeConfigurationIdentifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, typeConfigurationIdentifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchDescribeTypeConfigurationsErrorBuilder
    implements
        Builder<BatchDescribeTypeConfigurationsError,
            BatchDescribeTypeConfigurationsErrorBuilder> {
  _$BatchDescribeTypeConfigurationsError? _$v;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  _i2.TypeConfigurationIdentifierBuilder? _typeConfigurationIdentifier;
  _i2.TypeConfigurationIdentifierBuilder get typeConfigurationIdentifier =>
      _$this._typeConfigurationIdentifier ??=
          new _i2.TypeConfigurationIdentifierBuilder();
  set typeConfigurationIdentifier(
          _i2.TypeConfigurationIdentifierBuilder?
              typeConfigurationIdentifier) =>
      _$this._typeConfigurationIdentifier = typeConfigurationIdentifier;

  BatchDescribeTypeConfigurationsErrorBuilder() {
    BatchDescribeTypeConfigurationsError._init(this);
  }

  BatchDescribeTypeConfigurationsErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _typeConfigurationIdentifier =
          $v.typeConfigurationIdentifier?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchDescribeTypeConfigurationsError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchDescribeTypeConfigurationsError;
  }

  @override
  void update(
      void Function(BatchDescribeTypeConfigurationsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchDescribeTypeConfigurationsError build() => _build();

  _$BatchDescribeTypeConfigurationsError _build() {
    _$BatchDescribeTypeConfigurationsError _$result;
    try {
      _$result = _$v ??
          new _$BatchDescribeTypeConfigurationsError._(
              errorCode: errorCode,
              errorMessage: errorMessage,
              typeConfigurationIdentifier:
                  _typeConfigurationIdentifier?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'typeConfigurationIdentifier';
        _typeConfigurationIdentifier?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchDescribeTypeConfigurationsError',
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
