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
    var _$hash = 0;
    _$hash = $jc(_$hash, failedBatches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
