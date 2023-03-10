// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_configuration_recorder_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConfigurationRecorderRequest
    extends PutConfigurationRecorderRequest {
  @override
  final _i3.ConfigurationRecorder configurationRecorder;

  factory _$PutConfigurationRecorderRequest(
          [void Function(PutConfigurationRecorderRequestBuilder)? updates]) =>
      (new PutConfigurationRecorderRequestBuilder()..update(updates))._build();

  _$PutConfigurationRecorderRequest._({required this.configurationRecorder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configurationRecorder,
        r'PutConfigurationRecorderRequest', 'configurationRecorder');
  }

  @override
  PutConfigurationRecorderRequest rebuild(
          void Function(PutConfigurationRecorderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutConfigurationRecorderRequestBuilder toBuilder() =>
      new PutConfigurationRecorderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutConfigurationRecorderRequest &&
        configurationRecorder == other.configurationRecorder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationRecorder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutConfigurationRecorderRequestBuilder
    implements
        Builder<PutConfigurationRecorderRequest,
            PutConfigurationRecorderRequestBuilder> {
  _$PutConfigurationRecorderRequest? _$v;

  _i3.ConfigurationRecorderBuilder? _configurationRecorder;
  _i3.ConfigurationRecorderBuilder get configurationRecorder =>
      _$this._configurationRecorder ??= new _i3.ConfigurationRecorderBuilder();
  set configurationRecorder(
          _i3.ConfigurationRecorderBuilder? configurationRecorder) =>
      _$this._configurationRecorder = configurationRecorder;

  PutConfigurationRecorderRequestBuilder() {
    PutConfigurationRecorderRequest._init(this);
  }

  PutConfigurationRecorderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationRecorder = $v.configurationRecorder.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutConfigurationRecorderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutConfigurationRecorderRequest;
  }

  @override
  void update(void Function(PutConfigurationRecorderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutConfigurationRecorderRequest build() => _build();

  _$PutConfigurationRecorderRequest _build() {
    _$PutConfigurationRecorderRequest _$result;
    try {
      _$result = _$v ??
          new _$PutConfigurationRecorderRequest._(
              configurationRecorder: configurationRecorder.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationRecorder';
        configurationRecorder.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutConfigurationRecorderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
