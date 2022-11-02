// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_custom_rule_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomRulePolicyRequest extends GetCustomRulePolicyRequest {
  @override
  final String? configRuleName;

  factory _$GetCustomRulePolicyRequest(
          [void Function(GetCustomRulePolicyRequestBuilder)? updates]) =>
      (new GetCustomRulePolicyRequestBuilder()..update(updates))._build();

  _$GetCustomRulePolicyRequest._({this.configRuleName}) : super._();

  @override
  GetCustomRulePolicyRequest rebuild(
          void Function(GetCustomRulePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCustomRulePolicyRequestBuilder toBuilder() =>
      new GetCustomRulePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomRulePolicyRequest &&
        configRuleName == other.configRuleName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, configRuleName.hashCode));
  }
}

class GetCustomRulePolicyRequestBuilder
    implements
        Builder<GetCustomRulePolicyRequest, GetCustomRulePolicyRequestBuilder> {
  _$GetCustomRulePolicyRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  GetCustomRulePolicyRequestBuilder() {
    GetCustomRulePolicyRequest._init(this);
  }

  GetCustomRulePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomRulePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCustomRulePolicyRequest;
  }

  @override
  void update(void Function(GetCustomRulePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomRulePolicyRequest build() => _build();

  _$GetCustomRulePolicyRequest _build() {
    final _$result = _$v ??
        new _$GetCustomRulePolicyRequest._(configRuleName: configRuleName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
