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
    var _$hash = 0;
    _$hash = $jc(_$hash, failedEvaluations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
