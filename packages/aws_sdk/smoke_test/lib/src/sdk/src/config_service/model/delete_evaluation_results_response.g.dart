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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
