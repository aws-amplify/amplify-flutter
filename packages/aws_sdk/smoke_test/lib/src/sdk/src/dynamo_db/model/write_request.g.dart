// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WriteRequest extends WriteRequest {
  @override
  final _i2.PutRequest? putRequest;
  @override
  final _i3.DeleteRequest? deleteRequest;

  factory _$WriteRequest([void Function(WriteRequestBuilder)? updates]) =>
      (new WriteRequestBuilder()..update(updates))._build();

  _$WriteRequest._({this.putRequest, this.deleteRequest}) : super._();

  @override
  WriteRequest rebuild(void Function(WriteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WriteRequestBuilder toBuilder() => new WriteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WriteRequest &&
        putRequest == other.putRequest &&
        deleteRequest == other.deleteRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, putRequest.hashCode);
    _$hash = $jc(_$hash, deleteRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class WriteRequestBuilder
    implements Builder<WriteRequest, WriteRequestBuilder> {
  _$WriteRequest? _$v;

  _i2.PutRequestBuilder? _putRequest;
  _i2.PutRequestBuilder get putRequest =>
      _$this._putRequest ??= new _i2.PutRequestBuilder();
  set putRequest(_i2.PutRequestBuilder? putRequest) =>
      _$this._putRequest = putRequest;

  _i3.DeleteRequestBuilder? _deleteRequest;
  _i3.DeleteRequestBuilder get deleteRequest =>
      _$this._deleteRequest ??= new _i3.DeleteRequestBuilder();
  set deleteRequest(_i3.DeleteRequestBuilder? deleteRequest) =>
      _$this._deleteRequest = deleteRequest;

  WriteRequestBuilder();

  WriteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _putRequest = $v.putRequest?.toBuilder();
      _deleteRequest = $v.deleteRequest?.toBuilder();
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
              putRequest: _putRequest?.build(),
              deleteRequest: _deleteRequest?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putRequest';
        _putRequest?.build();
        _$failedField = 'deleteRequest';
        _deleteRequest?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
