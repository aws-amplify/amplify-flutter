// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_external_evaluation_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutExternalEvaluationRequest extends PutExternalEvaluationRequest {
  @override
  final String configRuleName;
  @override
  final _i3.ExternalEvaluation externalEvaluation;

  factory _$PutExternalEvaluationRequest(
          [void Function(PutExternalEvaluationRequestBuilder)? updates]) =>
      (new PutExternalEvaluationRequestBuilder()..update(updates))._build();

  _$PutExternalEvaluationRequest._(
      {required this.configRuleName, required this.externalEvaluation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'PutExternalEvaluationRequest', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(externalEvaluation,
        r'PutExternalEvaluationRequest', 'externalEvaluation');
  }

  @override
  PutExternalEvaluationRequest rebuild(
          void Function(PutExternalEvaluationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutExternalEvaluationRequestBuilder toBuilder() =>
      new PutExternalEvaluationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutExternalEvaluationRequest &&
        configRuleName == other.configRuleName &&
        externalEvaluation == other.externalEvaluation;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, configRuleName.hashCode), externalEvaluation.hashCode));
  }
}

class PutExternalEvaluationRequestBuilder
    implements
        Builder<PutExternalEvaluationRequest,
            PutExternalEvaluationRequestBuilder> {
  _$PutExternalEvaluationRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  _i3.ExternalEvaluationBuilder? _externalEvaluation;
  _i3.ExternalEvaluationBuilder get externalEvaluation =>
      _$this._externalEvaluation ??= new _i3.ExternalEvaluationBuilder();
  set externalEvaluation(_i3.ExternalEvaluationBuilder? externalEvaluation) =>
      _$this._externalEvaluation = externalEvaluation;

  PutExternalEvaluationRequestBuilder() {
    PutExternalEvaluationRequest._init(this);
  }

  PutExternalEvaluationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _externalEvaluation = $v.externalEvaluation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutExternalEvaluationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutExternalEvaluationRequest;
  }

  @override
  void update(void Function(PutExternalEvaluationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutExternalEvaluationRequest build() => _build();

  _$PutExternalEvaluationRequest _build() {
    _$PutExternalEvaluationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutExternalEvaluationRequest._(
              configRuleName: BuiltValueNullFieldError.checkNotNull(
                  configRuleName,
                  r'PutExternalEvaluationRequest',
                  'configRuleName'),
              externalEvaluation: externalEvaluation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'externalEvaluation';
        externalEvaluation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutExternalEvaluationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
