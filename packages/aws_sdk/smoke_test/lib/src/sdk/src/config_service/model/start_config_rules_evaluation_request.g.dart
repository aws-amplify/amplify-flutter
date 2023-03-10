// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.start_config_rules_evaluation_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartConfigRulesEvaluationRequest
    extends StartConfigRulesEvaluationRequest {
  @override
  final _i3.BuiltList<String>? configRuleNames;

  factory _$StartConfigRulesEvaluationRequest(
          [void Function(StartConfigRulesEvaluationRequestBuilder)? updates]) =>
      (new StartConfigRulesEvaluationRequestBuilder()..update(updates))
          ._build();

  _$StartConfigRulesEvaluationRequest._({this.configRuleNames}) : super._();

  @override
  StartConfigRulesEvaluationRequest rebuild(
          void Function(StartConfigRulesEvaluationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartConfigRulesEvaluationRequestBuilder toBuilder() =>
      new StartConfigRulesEvaluationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartConfigRulesEvaluationRequest &&
        configRuleNames == other.configRuleNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartConfigRulesEvaluationRequestBuilder
    implements
        Builder<StartConfigRulesEvaluationRequest,
            StartConfigRulesEvaluationRequestBuilder> {
  _$StartConfigRulesEvaluationRequest? _$v;

  _i3.ListBuilder<String>? _configRuleNames;
  _i3.ListBuilder<String> get configRuleNames =>
      _$this._configRuleNames ??= new _i3.ListBuilder<String>();
  set configRuleNames(_i3.ListBuilder<String>? configRuleNames) =>
      _$this._configRuleNames = configRuleNames;

  StartConfigRulesEvaluationRequestBuilder() {
    StartConfigRulesEvaluationRequest._init(this);
  }

  StartConfigRulesEvaluationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleNames = $v.configRuleNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartConfigRulesEvaluationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartConfigRulesEvaluationRequest;
  }

  @override
  void update(
      void Function(StartConfigRulesEvaluationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartConfigRulesEvaluationRequest build() => _build();

  _$StartConfigRulesEvaluationRequest _build() {
    _$StartConfigRulesEvaluationRequest _$result;
    try {
      _$result = _$v ??
          new _$StartConfigRulesEvaluationRequest._(
              configRuleNames: _configRuleNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRuleNames';
        _configRuleNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartConfigRulesEvaluationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
