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
    return $jf($jc(0, configurationRecorderName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
