// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.start_config_rules_evaluation_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartConfigRulesEvaluationResponse
    extends StartConfigRulesEvaluationResponse {
  factory _$StartConfigRulesEvaluationResponse(
          [void Function(StartConfigRulesEvaluationResponseBuilder)?
              updates]) =>
      (new StartConfigRulesEvaluationResponseBuilder()..update(updates))
          ._build();

  _$StartConfigRulesEvaluationResponse._() : super._();

  @override
  StartConfigRulesEvaluationResponse rebuild(
          void Function(StartConfigRulesEvaluationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartConfigRulesEvaluationResponseBuilder toBuilder() =>
      new StartConfigRulesEvaluationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartConfigRulesEvaluationResponse;
  }

  @override
  int get hashCode {
    return 1013071739;
  }
}

class StartConfigRulesEvaluationResponseBuilder
    implements
        Builder<StartConfigRulesEvaluationResponse,
            StartConfigRulesEvaluationResponseBuilder> {
  _$StartConfigRulesEvaluationResponse? _$v;

  StartConfigRulesEvaluationResponseBuilder() {
    StartConfigRulesEvaluationResponse._init(this);
  }

  @override
  void replace(StartConfigRulesEvaluationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartConfigRulesEvaluationResponse;
  }

  @override
  void update(
      void Function(StartConfigRulesEvaluationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartConfigRulesEvaluationResponse build() => _build();

  _$StartConfigRulesEvaluationResponse _build() {
    final _$result = _$v ?? new _$StartConfigRulesEvaluationResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
