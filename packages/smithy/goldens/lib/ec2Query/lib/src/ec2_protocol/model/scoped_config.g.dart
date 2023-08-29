// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scoped_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScopedConfig extends ScopedConfig {
  @override
  final EnvironmentConfig? environment;
  @override
  final _i2.BuiltMap<String, FileConfigSettings>? configFile;
  @override
  final _i2.BuiltMap<String, FileConfigSettings>? credentialsFile;
  @override
  final ClientConfig? client;
  @override
  final OperationConfig? operation;

  factory _$ScopedConfig([void Function(ScopedConfigBuilder)? updates]) =>
      (new ScopedConfigBuilder()..update(updates))._build();

  _$ScopedConfig._(
      {this.environment,
      this.configFile,
      this.credentialsFile,
      this.client,
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
        environment == other.environment &&
        configFile == other.configFile &&
        credentialsFile == other.credentialsFile &&
        client == other.client &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, configFile.hashCode);
    _$hash = $jc(_$hash, credentialsFile.hashCode);
    _$hash = $jc(_$hash, client.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScopedConfigBuilder
    implements Builder<ScopedConfig, ScopedConfigBuilder> {
  _$ScopedConfig? _$v;

  EnvironmentConfigBuilder? _environment;
  EnvironmentConfigBuilder get environment =>
      _$this._environment ??= new EnvironmentConfigBuilder();
  set environment(EnvironmentConfigBuilder? environment) =>
      _$this._environment = environment;

  _i2.MapBuilder<String, FileConfigSettings>? _configFile;
  _i2.MapBuilder<String, FileConfigSettings> get configFile =>
      _$this._configFile ??= new _i2.MapBuilder<String, FileConfigSettings>();
  set configFile(_i2.MapBuilder<String, FileConfigSettings>? configFile) =>
      _$this._configFile = configFile;

  _i2.MapBuilder<String, FileConfigSettings>? _credentialsFile;
  _i2.MapBuilder<String, FileConfigSettings> get credentialsFile =>
      _$this._credentialsFile ??=
          new _i2.MapBuilder<String, FileConfigSettings>();
  set credentialsFile(
          _i2.MapBuilder<String, FileConfigSettings>? credentialsFile) =>
      _$this._credentialsFile = credentialsFile;

  ClientConfigBuilder? _client;
  ClientConfigBuilder get client =>
      _$this._client ??= new ClientConfigBuilder();
  set client(ClientConfigBuilder? client) => _$this._client = client;

  OperationConfigBuilder? _operation;
  OperationConfigBuilder get operation =>
      _$this._operation ??= new OperationConfigBuilder();
  set operation(OperationConfigBuilder? operation) =>
      _$this._operation = operation;

  ScopedConfigBuilder();

  ScopedConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _environment = $v.environment?.toBuilder();
      _configFile = $v.configFile?.toBuilder();
      _credentialsFile = $v.credentialsFile?.toBuilder();
      _client = $v.client?.toBuilder();
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
              environment: _environment?.build(),
              configFile: _configFile?.build(),
              credentialsFile: _credentialsFile?.build(),
              client: _client?.build(),
              operation: _operation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'environment';
        _environment?.build();
        _$failedField = 'configFile';
        _configFile?.build();
        _$failedField = 'credentialsFile';
        _credentialsFile?.build();
        _$failedField = 'client';
        _client?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
