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
    return $jf($jc($jc(0, configRuleName.hashCode), resourceType.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
