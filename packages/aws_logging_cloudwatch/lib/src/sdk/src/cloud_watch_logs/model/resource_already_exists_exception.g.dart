// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_already_exists_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceAlreadyExistsException extends ResourceAlreadyExistsException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ResourceAlreadyExistsException(
          [void Function(ResourceAlreadyExistsExceptionBuilder)? updates]) =>
      (new ResourceAlreadyExistsExceptionBuilder()..update(updates))._build();

  _$ResourceAlreadyExistsException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  ResourceAlreadyExistsException rebuild(
          void Function(ResourceAlreadyExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceAlreadyExistsExceptionBuilder toBuilder() =>
      new ResourceAlreadyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceAlreadyExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceAlreadyExistsExceptionBuilder
    implements
        Builder<ResourceAlreadyExistsException,
            ResourceAlreadyExistsExceptionBuilder> {
  _$ResourceAlreadyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ResourceAlreadyExistsExceptionBuilder() {
    ResourceAlreadyExistsException._init(this);
  }

  ResourceAlreadyExistsExceptionBuilder get _$this {
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
  void replace(ResourceAlreadyExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceAlreadyExistsException;
  }

  @override
  void update(void Function(ResourceAlreadyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceAlreadyExistsException build() => _build();

  _$ResourceAlreadyExistsException _build() {
    final _$result = _$v ??
        new _$ResourceAlreadyExistsException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
