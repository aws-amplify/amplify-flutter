// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_remediation_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRemediationConfigurationRequest
    extends DeleteRemediationConfigurationRequest {
  @override
  final String configRuleName;
  @override
  final String? resourceType;

  factory _$DeleteRemediationConfigurationRequest(
          [void Function(DeleteRemediationConfigurationRequestBuilder)?
              updates]) =>
      (new DeleteRemediationConfigurationRequestBuilder()..update(updates))
          ._build();

  _$DeleteRemediationConfigurationRequest._(
      {required this.configRuleName, this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configRuleName,
        r'DeleteRemediationConfigurationRequest', 'configRuleName');
  }

  @override
  DeleteRemediationConfigurationRequest rebuild(
          void Function(DeleteRemediationConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRemediationConfigurationRequestBuilder toBuilder() =>
      new DeleteRemediationConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRemediationConfigurationRequest &&
        configRuleName == other.configRuleName &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRemediationConfigurationRequestBuilder
    implements
        Builder<DeleteRemediationConfigurationRequest,
            DeleteRemediationConfigurationRequestBuilder> {
  _$DeleteRemediationConfigurationRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  DeleteRemediationConfigurationRequestBuilder() {
    DeleteRemediationConfigurationRequest._init(this);
  }

  DeleteRemediationConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRemediationConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRemediationConfigurationRequest;
  }

  @override
  void update(
      void Function(DeleteRemediationConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRemediationConfigurationRequest build() => _build();

  _$DeleteRemediationConfigurationRequest _build() {
    final _$result = _$v ??
        new _$DeleteRemediationConfigurationRequest._(
            configRuleName: BuiltValueNullFieldError.checkNotNull(
                configRuleName,
                r'DeleteRemediationConfigurationRequest',
                'configRuleName'),
            resourceType: resourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
