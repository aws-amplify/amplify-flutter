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
    return $jf($jc(0, configRuleNames.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
