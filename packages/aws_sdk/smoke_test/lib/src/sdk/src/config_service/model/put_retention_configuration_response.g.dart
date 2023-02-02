// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_retention_configuration_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRetentionConfigurationResponse
    extends PutRetentionConfigurationResponse {
  @override
  final _i2.RetentionConfiguration? retentionConfiguration;

  factory _$PutRetentionConfigurationResponse(
          [void Function(PutRetentionConfigurationResponseBuilder)? updates]) =>
      (new PutRetentionConfigurationResponseBuilder()..update(updates))
          ._build();

  _$PutRetentionConfigurationResponse._({this.retentionConfiguration})
      : super._();

  @override
  PutRetentionConfigurationResponse rebuild(
          void Function(PutRetentionConfigurationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRetentionConfigurationResponseBuilder toBuilder() =>
      new PutRetentionConfigurationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRetentionConfigurationResponse &&
        retentionConfiguration == other.retentionConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, retentionConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRetentionConfigurationResponseBuilder
    implements
        Builder<PutRetentionConfigurationResponse,
            PutRetentionConfigurationResponseBuilder> {
  _$PutRetentionConfigurationResponse? _$v;

  _i2.RetentionConfigurationBuilder? _retentionConfiguration;
  _i2.RetentionConfigurationBuilder get retentionConfiguration =>
      _$this._retentionConfiguration ??=
          new _i2.RetentionConfigurationBuilder();
  set retentionConfiguration(
          _i2.RetentionConfigurationBuilder? retentionConfiguration) =>
      _$this._retentionConfiguration = retentionConfiguration;

  PutRetentionConfigurationResponseBuilder() {
    PutRetentionConfigurationResponse._init(this);
  }

  PutRetentionConfigurationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retentionConfiguration = $v.retentionConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRetentionConfigurationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRetentionConfigurationResponse;
  }

  @override
  void update(
      void Function(PutRetentionConfigurationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRetentionConfigurationResponse build() => _build();

  _$PutRetentionConfigurationResponse _build() {
    _$PutRetentionConfigurationResponse _$result;
    try {
      _$result = _$v ??
          new _$PutRetentionConfigurationResponse._(
              retentionConfiguration: _retentionConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retentionConfiguration';
        _retentionConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRetentionConfigurationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
