// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_in_use_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceInUseException extends ResourceInUseException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ResourceInUseException(
          [void Function(ResourceInUseExceptionBuilder)? updates]) =>
      (new ResourceInUseExceptionBuilder()..update(updates))._build();

  _$ResourceInUseException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  ResourceInUseException rebuild(
          void Function(ResourceInUseExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceInUseExceptionBuilder toBuilder() =>
      new ResourceInUseExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceInUseException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceInUseExceptionBuilder
    implements Builder<ResourceInUseException, ResourceInUseExceptionBuilder> {
  _$ResourceInUseException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ResourceInUseExceptionBuilder() {
    ResourceInUseException._init(this);
  }

  ResourceInUseExceptionBuilder get _$this {
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
  void replace(ResourceInUseException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceInUseException;
  }

  @override
  void update(void Function(ResourceInUseExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceInUseException build() => _build();

  _$ResourceInUseException _build() {
    final _$result = _$v ??
        new _$ResourceInUseException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
