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
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
