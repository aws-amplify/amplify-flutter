// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_configuration_recorder_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteConfigurationRecorderRequest
    extends DeleteConfigurationRecorderRequest {
  @override
  final String configurationRecorderName;

  factory _$DeleteConfigurationRecorderRequest(
          [void Function(DeleteConfigurationRecorderRequestBuilder)?
              updates]) =>
      (new DeleteConfigurationRecorderRequestBuilder()..update(updates))
          ._build();

  _$DeleteConfigurationRecorderRequest._(
      {required this.configurationRecorderName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configurationRecorderName,
        r'DeleteConfigurationRecorderRequest', 'configurationRecorderName');
  }

  @override
  DeleteConfigurationRecorderRequest rebuild(
          void Function(DeleteConfigurationRecorderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteConfigurationRecorderRequestBuilder toBuilder() =>
      new DeleteConfigurationRecorderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteConfigurationRecorderRequest &&
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

class DeleteConfigurationRecorderRequestBuilder
    implements
        Builder<DeleteConfigurationRecorderRequest,
            DeleteConfigurationRecorderRequestBuilder> {
  _$DeleteConfigurationRecorderRequest? _$v;

  String? _configurationRecorderName;
  String? get configurationRecorderName => _$this._configurationRecorderName;
  set configurationRecorderName(String? configurationRecorderName) =>
      _$this._configurationRecorderName = configurationRecorderName;

  DeleteConfigurationRecorderRequestBuilder() {
    DeleteConfigurationRecorderRequest._init(this);
  }

  DeleteConfigurationRecorderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationRecorderName = $v.configurationRecorderName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteConfigurationRecorderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteConfigurationRecorderRequest;
  }

  @override
  void update(
      void Function(DeleteConfigurationRecorderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteConfigurationRecorderRequest build() => _build();

  _$DeleteConfigurationRecorderRequest _build() {
    final _$result = _$v ??
        new _$DeleteConfigurationRecorderRequest._(
            configurationRecorderName: BuiltValueNullFieldError.checkNotNull(
                configurationRecorderName,
                r'DeleteConfigurationRecorderRequest',
                'configurationRecorderName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
