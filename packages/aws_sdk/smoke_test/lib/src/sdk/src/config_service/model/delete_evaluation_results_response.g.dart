// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_evaluation_results_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteEvaluationResultsResponse
    extends DeleteEvaluationResultsResponse {
  factory _$DeleteEvaluationResultsResponse(
          [void Function(DeleteEvaluationResultsResponseBuilder)? updates]) =>
      (new DeleteEvaluationResultsResponseBuilder()..update(updates))._build();

  _$DeleteEvaluationResultsResponse._() : super._();

  @override
  DeleteEvaluationResultsResponse rebuild(
          void Function(DeleteEvaluationResultsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteEvaluationResultsResponseBuilder toBuilder() =>
      new DeleteEvaluationResultsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteEvaluationResultsResponse;
  }

  @override
  int get hashCode {
    return 995233076;
  }
}

class DeleteEvaluationResultsResponseBuilder
    implements
        Builder<DeleteEvaluationResultsResponse,
            DeleteEvaluationResultsResponseBuilder> {
  _$DeleteEvaluationResultsResponse? _$v;

  DeleteEvaluationResultsResponseBuilder() {
    DeleteEvaluationResultsResponse._init(this);
  }

  @override
  void replace(DeleteEvaluationResultsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteEvaluationResultsResponse;
  }

  @override
  void update(void Function(DeleteEvaluationResultsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteEvaluationResultsResponse build() => _build();

  _$DeleteEvaluationResultsResponse _build() {
    final _$result = _$v ?? new _$DeleteEvaluationResultsResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
