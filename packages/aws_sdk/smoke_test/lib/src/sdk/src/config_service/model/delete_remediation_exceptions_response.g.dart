// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_remediation_exceptions_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRemediationExceptionsResponse
    extends DeleteRemediationExceptionsResponse {
  @override
  final _i3.BuiltList<_i2.FailedDeleteRemediationExceptionsBatch>?
      failedBatches;

  factory _$DeleteRemediationExceptionsResponse(
          [void Function(DeleteRemediationExceptionsResponseBuilder)?
              updates]) =>
      (new DeleteRemediationExceptionsResponseBuilder()..update(updates))
          ._build();

  _$DeleteRemediationExceptionsResponse._({this.failedBatches}) : super._();

  @override
  DeleteRemediationExceptionsResponse rebuild(
          void Function(DeleteRemediationExceptionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRemediationExceptionsResponseBuilder toBuilder() =>
      new DeleteRemediationExceptionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRemediationExceptionsResponse &&
        failedBatches == other.failedBatches;
  }

  @override
  int get hashCode {
    return $jf($jc(0, failedBatches.hashCode));
  }
}

class DeleteRemediationExceptionsResponseBuilder
    implements
        Builder<DeleteRemediationExceptionsResponse,
            DeleteRemediationExceptionsResponseBuilder> {
  _$DeleteRemediationExceptionsResponse? _$v;

  _i3.ListBuilder<_i2.FailedDeleteRemediationExceptionsBatch>? _failedBatches;
  _i3.ListBuilder<_i2.FailedDeleteRemediationExceptionsBatch>
      get failedBatches => _$this._failedBatches ??=
          new _i3.ListBuilder<_i2.FailedDeleteRemediationExceptionsBatch>();
  set failedBatches(
          _i3.ListBuilder<_i2.FailedDeleteRemediationExceptionsBatch>?
              failedBatches) =>
      _$this._failedBatches = failedBatches;

  DeleteRemediationExceptionsResponseBuilder() {
    DeleteRemediationExceptionsResponse._init(this);
  }

  DeleteRemediationExceptionsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedBatches = $v.failedBatches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRemediationExceptionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRemediationExceptionsResponse;
  }

  @override
  void update(
      void Function(DeleteRemediationExceptionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRemediationExceptionsResponse build() => _build();

  _$DeleteRemediationExceptionsResponse _build() {
    _$DeleteRemediationExceptionsResponse _$result;
    try {
      _$result = _$v ??
          new _$DeleteRemediationExceptionsResponse._(
              failedBatches: _failedBatches?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedBatches';
        _failedBatches?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteRemediationExceptionsResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
