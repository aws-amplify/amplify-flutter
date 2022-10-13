// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.api_gateway.model.scoped_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScopedConfig extends ScopedConfig {
  @override
  final _i2.ClientConfig? client;
  @override
  final _i3.BuiltMap<String, _i4.FileConfigSettings>? configFile;
  @override
  final _i3.BuiltMap<String, _i4.FileConfigSettings>? credentialsFile;
  @override
  final _i5.EnvironmentConfig? environment;
  @override
  final _i6.OperationConfig? operation;

  factory _$ScopedConfig([void Function(ScopedConfigBuilder)? updates]) =>
      (new ScopedConfigBuilder()..update(updates))._build();

  _$ScopedConfig._(
      {this.client,
      this.configFile,
      this.credentialsFile,
      this.environment,
      this.operation})
      : super._();

  @override
  ScopedConfig rebuild(void Function(ScopedConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScopedConfigBuilder toBuilder() => new ScopedConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScopedConfig &&
        client == other.client &&
        configFile == other.configFile &&
        credentialsFile == other.credentialsFile &&
        environment == other.environment &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, client.hashCode), configFile.hashCode),
                credentialsFile.hashCode),
            environment.hashCode),
        operation.hashCode));
  }
}

class ScopedConfigBuilder
    implements Builder<ScopedConfig, ScopedConfigBuilder> {
  _$ScopedConfig? _$v;

  _i2.ClientConfigBuilder? _client;
  _i2.ClientConfigBuilder get client =>
      _$this._client ??= new _i2.ClientConfigBuilder();
  set client(_i2.ClientConfigBuilder? client) => _$this._client = client;

  _i3.MapBuilder<String, _i4.FileConfigSettings>? _configFile;
  _i3.MapBuilder<String, _i4.FileConfigSettings> get configFile =>
      _$this._configFile ??=
          new _i3.MapBuilder<String, _i4.FileConfigSettings>();
  set configFile(_i3.MapBuilder<String, _i4.FileConfigSettings>? configFile) =>
      _$this._configFile = configFile;

  _i3.MapBuilder<String, _i4.FileConfigSettings>? _credentialsFile;
  _i3.MapBuilder<String, _i4.FileConfigSettings> get credentialsFile =>
      _$this._credentialsFile ??=
          new _i3.MapBuilder<String, _i4.FileConfigSettings>();
  set credentialsFile(
          _i3.MapBuilder<String, _i4.FileConfigSettings>? credentialsFile) =>
      _$this._credentialsFile = credentialsFile;

  _i5.EnvironmentConfigBuilder? _environment;
  _i5.EnvironmentConfigBuilder get environment =>
      _$this._environment ??= new _i5.EnvironmentConfigBuilder();
  set environment(_i5.EnvironmentConfigBuilder? environment) =>
      _$this._environment = environment;

  _i6.OperationConfigBuilder? _operation;
  _i6.OperationConfigBuilder get operation =>
      _$this._operation ??= new _i6.OperationConfigBuilder();
  set operation(_i6.OperationConfigBuilder? operation) =>
      _$this._operation = operation;

  ScopedConfigBuilder() {
    ScopedConfig._init(this);
  }

  ScopedConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _client = $v.client?.toBuilder();
      _configFile = $v.configFile?.toBuilder();
      _credentialsFile = $v.credentialsFile?.toBuilder();
      _environment = $v.environment?.toBuilder();
      _operation = $v.operation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScopedConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScopedConfig;
  }

  @override
  void update(void Function(ScopedConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScopedConfig build() => _build();

  _$ScopedConfig _build() {
    _$ScopedConfig _$result;
    try {
      _$result = _$v ??
          new _$ScopedConfig._(
              client: _client?.build(),
              configFile: _configFile?.build(),
              credentialsFile: _credentialsFile?.build(),
              environment: _environment?.build(),
              operation: _operation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'client';
        _client?.build();
        _$failedField = 'configFile';
        _configFile?.build();
        _$failedField = 'credentialsFile';
        _credentialsFile?.build();
        _$failedField = 'environment';
        _environment?.build();
        _$failedField = 'operation';
        _operation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScopedConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
