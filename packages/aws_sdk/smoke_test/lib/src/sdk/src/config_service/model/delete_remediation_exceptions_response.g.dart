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
    var _$hash = 0;
    _$hash = $jc(_$hash, failedBatches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
