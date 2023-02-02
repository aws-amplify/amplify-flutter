// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_config_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteConfigRuleRequest extends DeleteConfigRuleRequest {
  @override
  final String configRuleName;

  factory _$DeleteConfigRuleRequest(
          [void Function(DeleteConfigRuleRequestBuilder)? updates]) =>
      (new DeleteConfigRuleRequestBuilder()..update(updates))._build();

  _$DeleteConfigRuleRequest._({required this.configRuleName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'DeleteConfigRuleRequest', 'configRuleName');
  }

  @override
  DeleteConfigRuleRequest rebuild(
          void Function(DeleteConfigRuleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteConfigRuleRequestBuilder toBuilder() =>
      new DeleteConfigRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteConfigRuleRequest &&
        configRuleName == other.configRuleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteConfigRuleRequestBuilder
    implements
        Builder<DeleteConfigRuleRequest, DeleteConfigRuleRequestBuilder> {
  _$DeleteConfigRuleRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  DeleteConfigRuleRequestBuilder() {
    DeleteConfigRuleRequest._init(this);
  }

  DeleteConfigRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteConfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteConfigRuleRequest;
  }

  @override
  void update(void Function(DeleteConfigRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteConfigRuleRequest build() => _build();

  _$DeleteConfigRuleRequest _build() {
    final _$result = _$v ??
        new _$DeleteConfigRuleRequest._(
            configRuleName: BuiltValueNullFieldError.checkNotNull(
                configRuleName, r'DeleteConfigRuleRequest', 'configRuleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
