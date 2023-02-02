// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_concurrent_modification_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceConcurrentModificationException
    extends ResourceConcurrentModificationException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ResourceConcurrentModificationException(
          [void Function(ResourceConcurrentModificationExceptionBuilder)?
              updates]) =>
      (new ResourceConcurrentModificationExceptionBuilder()..update(updates))
          ._build();

  _$ResourceConcurrentModificationException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  ResourceConcurrentModificationException rebuild(
          void Function(ResourceConcurrentModificationExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceConcurrentModificationExceptionBuilder toBuilder() =>
      new ResourceConcurrentModificationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceConcurrentModificationException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceConcurrentModificationExceptionBuilder
    implements
        Builder<ResourceConcurrentModificationException,
            ResourceConcurrentModificationExceptionBuilder> {
  _$ResourceConcurrentModificationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ResourceConcurrentModificationExceptionBuilder() {
    ResourceConcurrentModificationException._init(this);
  }

  ResourceConcurrentModificationExceptionBuilder get _$this {
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
  void replace(ResourceConcurrentModificationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceConcurrentModificationException;
  }

  @override
  void update(
      void Function(ResourceConcurrentModificationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceConcurrentModificationException build() => _build();

  _$ResourceConcurrentModificationException _build() {
    final _$result = _$v ??
        new _$ResourceConcurrentModificationException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
