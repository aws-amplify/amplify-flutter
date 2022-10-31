// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_evaluations_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutEvaluationsResponse extends PutEvaluationsResponse {
  @override
  final _i3.BuiltList<_i2.Evaluation>? failedEvaluations;

  factory _$PutEvaluationsResponse(
          [void Function(PutEvaluationsResponseBuilder)? updates]) =>
      (new PutEvaluationsResponseBuilder()..update(updates))._build();

  _$PutEvaluationsResponse._({this.failedEvaluations}) : super._();

  @override
  PutEvaluationsResponse rebuild(
          void Function(PutEvaluationsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutEvaluationsResponseBuilder toBuilder() =>
      new PutEvaluationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutEvaluationsResponse &&
        failedEvaluations == other.failedEvaluations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, failedEvaluations.hashCode));
  }
}

class PutEvaluationsResponseBuilder
    implements Builder<PutEvaluationsResponse, PutEvaluationsResponseBuilder> {
  _$PutEvaluationsResponse? _$v;

  _i3.ListBuilder<_i2.Evaluation>? _failedEvaluations;
  _i3.ListBuilder<_i2.Evaluation> get failedEvaluations =>
      _$this._failedEvaluations ??= new _i3.ListBuilder<_i2.Evaluation>();
  set failedEvaluations(_i3.ListBuilder<_i2.Evaluation>? failedEvaluations) =>
      _$this._failedEvaluations = failedEvaluations;

  PutEvaluationsResponseBuilder() {
    PutEvaluationsResponse._init(this);
  }

  PutEvaluationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedEvaluations = $v.failedEvaluations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutEvaluationsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutEvaluationsResponse;
  }

  @override
  void update(void Function(PutEvaluationsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutEvaluationsResponse build() => _build();

  _$PutEvaluationsResponse _build() {
    _$PutEvaluationsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutEvaluationsResponse._(
              failedEvaluations: _failedEvaluations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedEvaluations';
        _failedEvaluations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutEvaluationsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
