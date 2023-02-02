// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.start_remediation_execution_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartRemediationExecutionRequest
    extends StartRemediationExecutionRequest {
  @override
  final String configRuleName;
  @override
  final _i4.BuiltList<_i3.ResourceKey> resourceKeys;

  factory _$StartRemediationExecutionRequest(
          [void Function(StartRemediationExecutionRequestBuilder)? updates]) =>
      (new StartRemediationExecutionRequestBuilder()..update(updates))._build();

  _$StartRemediationExecutionRequest._(
      {required this.configRuleName, required this.resourceKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'StartRemediationExecutionRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(
        resourceKeys, r'StartRemediationExecutionRequest', 'resourceKeys');
  }

  @override
  StartRemediationExecutionRequest rebuild(
          void Function(StartRemediationExecutionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartRemediationExecutionRequestBuilder toBuilder() =>
      new StartRemediationExecutionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartRemediationExecutionRequest &&
        configRuleName == other.configRuleName &&
        resourceKeys == other.resourceKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, resourceKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartRemediationExecutionRequestBuilder
    implements
        Builder<StartRemediationExecutionRequest,
            StartRemediationExecutionRequestBuilder> {
  _$StartRemediationExecutionRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i4.ListBuilder<_i3.ResourceKey>? _resourceKeys;
  _i4.ListBuilder<_i3.ResourceKey> get resourceKeys =>
      _$this._resourceKeys ??= new _i4.ListBuilder<_i3.ResourceKey>();
  set resourceKeys(_i4.ListBuilder<_i3.ResourceKey>? resourceKeys) =>
      _$this._resourceKeys = resourceKeys;

  StartRemediationExecutionRequestBuilder() {
    StartRemediationExecutionRequest._init(this);
  }

  StartRemediationExecutionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _resourceKeys = $v.resourceKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartRemediationExecutionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartRemediationExecutionRequest;
  }

  @override
  void update(void Function(StartRemediationExecutionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartRemediationExecutionRequest build() => _build();

  _$StartRemediationExecutionRequest _build() {
    _$StartRemediationExecutionRequest _$result;
    try {
      _$result = _$v ??
          new _$StartRemediationExecutionRequest._(
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'StartRemediationExecutionRequest',
                  'configRuleName'),
              resourceKeys: resourceKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceKeys';
        resourceKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartRemediationExecutionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
