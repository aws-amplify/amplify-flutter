// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_remediation_exceptions_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRemediationExceptionsResponse
    extends PutRemediationExceptionsResponse {
  @override
  final _i3.BuiltList<_i2.FailedRemediationExceptionBatch>? failedBatches;

  factory _$PutRemediationExceptionsResponse(
          [void Function(PutRemediationExceptionsResponseBuilder)? updates]) =>
      (new PutRemediationExceptionsResponseBuilder()..update(updates))._build();

  _$PutRemediationExceptionsResponse._({this.failedBatches}) : super._();

  @override
  PutRemediationExceptionsResponse rebuild(
          void Function(PutRemediationExceptionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRemediationExceptionsResponseBuilder toBuilder() =>
      new PutRemediationExceptionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRemediationExceptionsResponse &&
        failedBatches == other.failedBatches;
  }

  @override
  int get hashCode {
    return $jf($jc(0, failedBatches.hashCode));
  }
}

class PutRemediationExceptionsResponseBuilder
    implements
        Builder<PutRemediationExceptionsResponse,
            PutRemediationExceptionsResponseBuilder> {
  _$PutRemediationExceptionsResponse? _$v;

  _i3.ListBuilder<_i2.FailedRemediationExceptionBatch>? _failedBatches;
  _i3.ListBuilder<_i2.FailedRemediationExceptionBatch> get failedBatches =>
      _$this._failedBatches ??=
          new _i3.ListBuilder<_i2.FailedRemediationExceptionBatch>();
  set failedBatches(
          _i3.ListBuilder<_i2.FailedRemediationExceptionBatch>?
              failedBatches) =>
      _$this._failedBatches = failedBatches;

  PutRemediationExceptionsResponseBuilder() {
    PutRemediationExceptionsResponse._init(this);
  }

  PutRemediationExceptionsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedBatches = $v.failedBatches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRemediationExceptionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRemediationExceptionsResponse;
  }

  @override
  void update(void Function(PutRemediationExceptionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRemediationExceptionsResponse build() => _build();

  _$PutRemediationExceptionsResponse _build() {
    _$PutRemediationExceptionsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutRemediationExceptionsResponse._(
              failedBatches: _failedBatches?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedBatches';
        _failedBatches?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRemediationExceptionsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
