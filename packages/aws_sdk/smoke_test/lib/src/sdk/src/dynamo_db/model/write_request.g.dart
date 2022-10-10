// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.write_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WriteRequest extends WriteRequest {
  @override
  final _i2.DeleteRequest? deleteRequest;
  @override
  final _i3.PutRequest? putRequest;

  factory _$WriteRequest([void Function(WriteRequestBuilder)? updates]) =>
      (new WriteRequestBuilder()..update(updates))._build();

  _$WriteRequest._({this.deleteRequest, this.putRequest}) : super._();

  @override
  WriteRequest rebuild(void Function(WriteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WriteRequestBuilder toBuilder() => new WriteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WriteRequest &&
        deleteRequest == other.deleteRequest &&
        putRequest == other.putRequest;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, deleteRequest.hashCode), putRequest.hashCode));
  }
}

class WriteRequestBuilder
    implements Builder<WriteRequest, WriteRequestBuilder> {
  _$WriteRequest? _$v;

  _i2.DeleteRequestBuilder? _deleteRequest;
  _i2.DeleteRequestBuilder get deleteRequest =>
      _$this._deleteRequest ??= new _i2.DeleteRequestBuilder();
  set deleteRequest(_i2.DeleteRequestBuilder? deleteRequest) =>
      _$this._deleteRequest = deleteRequest;

  _i3.PutRequestBuilder? _putRequest;
  _i3.PutRequestBuilder get putRequest =>
      _$this._putRequest ??= new _i3.PutRequestBuilder();
  set putRequest(_i3.PutRequestBuilder? putRequest) =>
      _$this._putRequest = putRequest;

  WriteRequestBuilder() {
    WriteRequest._init(this);
  }

  WriteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteRequest = $v.deleteRequest?.toBuilder();
      _putRequest = $v.putRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WriteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WriteRequest;
  }

  @override
  void update(void Function(WriteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WriteRequest build() => _build();

  _$WriteRequest _build() {
    _$WriteRequest _$result;
    try {
      _$result = _$v ??
          new _$WriteRequest._(
              deleteRequest: _deleteRequest?.build(),
              putRequest: _putRequest?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteRequest';
        _deleteRequest?.build();
        _$failedField = 'putRequest';
        _putRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WriteRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
