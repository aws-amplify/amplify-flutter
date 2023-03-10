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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
