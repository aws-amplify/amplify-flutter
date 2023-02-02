// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.stop_configuration_recorder_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StopConfigurationRecorderRequest
    extends StopConfigurationRecorderRequest {
  @override
  final String configurationRecorderName;

  factory _$StopConfigurationRecorderRequest(
          [void Function(StopConfigurationRecorderRequestBuilder)? updates]) =>
      (new StopConfigurationRecorderRequestBuilder()..update(updates))._build();

  _$StopConfigurationRecorderRequest._(
      {required this.configurationRecorderName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configurationRecorderName,
        r'StopConfigurationRecorderRequest', 'configurationRecorderName');
  }

  @override
  StopConfigurationRecorderRequest rebuild(
          void Function(StopConfigurationRecorderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopConfigurationRecorderRequestBuilder toBuilder() =>
      new StopConfigurationRecorderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopConfigurationRecorderRequest &&
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

class StopConfigurationRecorderRequestBuilder
    implements
        Builder<StopConfigurationRecorderRequest,
            StopConfigurationRecorderRequestBuilder> {
  _$StopConfigurationRecorderRequest? _$v;

  String? _configurationRecorderName;
  String? get configurationRecorderName => _$this._configurationRecorderName;
  set configurationRecorderName(String? configurationRecorderName) =>
      _$this._configurationRecorderName = configurationRecorderName;

  StopConfigurationRecorderRequestBuilder() {
    StopConfigurationRecorderRequest._init(this);
  }

  StopConfigurationRecorderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationRecorderName = $v.configurationRecorderName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StopConfigurationRecorderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopConfigurationRecorderRequest;
  }

  @override
  void update(void Function(StopConfigurationRecorderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StopConfigurationRecorderRequest build() => _build();

  _$StopConfigurationRecorderRequest _build() {
    final _$result = _$v ??
        new _$StopConfigurationRecorderRequest._(
            configurationRecorderName: BuiltValueNullFieldError.checkNotNull(
                configurationRecorderName,
                r'StopConfigurationRecorderRequest',
                'configurationRecorderName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
