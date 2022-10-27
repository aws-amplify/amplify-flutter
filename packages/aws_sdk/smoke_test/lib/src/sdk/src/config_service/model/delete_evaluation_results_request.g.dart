// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_evaluation_results_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteEvaluationResultsRequest extends DeleteEvaluationResultsRequest {
  @override
  final String configRuleName;

  factory _$DeleteEvaluationResultsRequest(
          [void Function(DeleteEvaluationResultsRequestBuilder)? updates]) =>
      (new DeleteEvaluationResultsRequestBuilder()..update(updates))._build();

  _$DeleteEvaluationResultsRequest._({required this.configRuleName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'DeleteEvaluationResultsRequest', 'configRuleName');
  }

  @override
  DeleteEvaluationResultsRequest rebuild(
          void Function(DeleteEvaluationResultsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteEvaluationResultsRequestBuilder toBuilder() =>
      new DeleteEvaluationResultsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteEvaluationResultsRequest &&
        configRuleName == other.configRuleName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, configRuleName.hashCode));
  }
}

class DeleteEvaluationResultsRequestBuilder
    implements
        Builder<DeleteEvaluationResultsRequest,
            DeleteEvaluationResultsRequestBuilder> {
  _$DeleteEvaluationResultsRequest? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  DeleteEvaluationResultsRequestBuilder() {
    DeleteEvaluationResultsRequest._init(this);
  }

  DeleteEvaluationResultsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteEvaluationResultsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteEvaluationResultsRequest;
  }

  @override
  void update(void Function(DeleteEvaluationResultsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteEvaluationResultsRequest build() => _build();

  _$DeleteEvaluationResultsRequest _build() {
    final _$result = _$v ??
        new _$DeleteEvaluationResultsRequest._(
            configRuleName: BuiltValueNullFieldError.checkNotNull(
                configRuleName,
                r'DeleteEvaluationResultsRequest',
                'configRuleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
