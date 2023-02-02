// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.start_configuration_recorder_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartConfigurationRecorderRequest
    extends StartConfigurationRecorderRequest {
  @override
  final String configurationRecorderName;

  factory _$StartConfigurationRecorderRequest(
          [void Function(StartConfigurationRecorderRequestBuilder)? updates]) =>
      (new StartConfigurationRecorderRequestBuilder()..update(updates))
          ._build();

  _$StartConfigurationRecorderRequest._(
      {required this.configurationRecorderName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configurationRecorderName,
        r'StartConfigurationRecorderRequest', 'configurationRecorderName');
  }

  @override
  StartConfigurationRecorderRequest rebuild(
          void Function(StartConfigurationRecorderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartConfigurationRecorderRequestBuilder toBuilder() =>
      new StartConfigurationRecorderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartConfigurationRecorderRequest &&
        configurationRecorderName == other.configurationRecorderName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationRecorderName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartConfigurationRecorderRequestBuilder
    implements
        Builder<StartConfigurationRecorderRequest,
            StartConfigurationRecorderRequestBuilder> {
  _$StartConfigurationRecorderRequest? _$v;

  String? _configurationRecorderName;
  String? get configurationRecorderName => _$this._configurationRecorderName;
  set configurationRecorderName(String? configurationRecorderName) =>
      _$this._configurationRecorderName = configurationRecorderName;

  StartConfigurationRecorderRequestBuilder() {
    StartConfigurationRecorderRequest._init(this);
  }

  StartConfigurationRecorderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationRecorderName = $v.configurationRecorderName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartConfigurationRecorderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartConfigurationRecorderRequest;
  }

  @override
  void update(
      void Function(StartConfigurationRecorderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartConfigurationRecorderRequest build() => _build();

  _$StartConfigurationRecorderRequest _build() {
    final _$result = _$v ??
        new _$StartConfigurationRecorderRequest._(
            configurationRecorderName: BuiltValueNullFieldError.checkNotNull(
                configurationRecorderName,
                r'StartConfigurationRecorderRequest',
                'configurationRecorderName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
