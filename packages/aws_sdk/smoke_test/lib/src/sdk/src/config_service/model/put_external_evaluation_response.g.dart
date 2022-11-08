// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_external_evaluation_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutExternalEvaluationResponse extends PutExternalEvaluationResponse {
  factory _$PutExternalEvaluationResponse(
          [void Function(PutExternalEvaluationResponseBuilder)? updates]) =>
      (new PutExternalEvaluationResponseBuilder()..update(updates))._build();

  _$PutExternalEvaluationResponse._() : super._();

  @override
  PutExternalEvaluationResponse rebuild(
          void Function(PutExternalEvaluationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutExternalEvaluationResponseBuilder toBuilder() =>
      new PutExternalEvaluationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutExternalEvaluationResponse;
  }

  @override
  int get hashCode {
    return 237010200;
  }
}

class PutExternalEvaluationResponseBuilder
    implements
        Builder<PutExternalEvaluationResponse,
            PutExternalEvaluationResponseBuilder> {
  _$PutExternalEvaluationResponse? _$v;

  PutExternalEvaluationResponseBuilder() {
    PutExternalEvaluationResponse._init(this);
  }

  @override
  void replace(PutExternalEvaluationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutExternalEvaluationResponse;
  }

  @override
  void update(void Function(PutExternalEvaluationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutExternalEvaluationResponse build() => _build();

  _$PutExternalEvaluationResponse _build() {
    final _$result = _$v ?? new _$PutExternalEvaluationResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
