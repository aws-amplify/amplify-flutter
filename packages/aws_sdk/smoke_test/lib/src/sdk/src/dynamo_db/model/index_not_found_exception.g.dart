// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_not_found_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndexNotFoundException extends IndexNotFoundException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$IndexNotFoundException(
          [void Function(IndexNotFoundExceptionBuilder)? updates]) =>
      (new IndexNotFoundExceptionBuilder()..update(updates))._build();

  _$IndexNotFoundException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  IndexNotFoundException rebuild(
          void Function(IndexNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexNotFoundExceptionBuilder toBuilder() =>
      new IndexNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IndexNotFoundExceptionBuilder
    implements Builder<IndexNotFoundException, IndexNotFoundExceptionBuilder> {
  _$IndexNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  IndexNotFoundExceptionBuilder();

  IndexNotFoundExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndexNotFoundException;
  }

  @override
  void update(void Function(IndexNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexNotFoundException build() => _build();

  _$IndexNotFoundException _build() {
    final _$result = _$v ??
        new _$IndexNotFoundException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
