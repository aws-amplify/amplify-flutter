// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.service_not_supported_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceNotSupportedException extends ServiceNotSupportedException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ServiceNotSupportedException(
          [void Function(ServiceNotSupportedExceptionBuilder)? updates]) =>
      (new ServiceNotSupportedExceptionBuilder()..update(updates))._build();

  _$ServiceNotSupportedException._({this.message, this.headers}) : super._();

  @override
  ServiceNotSupportedException rebuild(
          void Function(ServiceNotSupportedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceNotSupportedExceptionBuilder toBuilder() =>
      new ServiceNotSupportedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceNotSupportedException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceNotSupportedExceptionBuilder
    implements
        Builder<ServiceNotSupportedException,
            ServiceNotSupportedExceptionBuilder> {
  _$ServiceNotSupportedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ServiceNotSupportedExceptionBuilder() {
    ServiceNotSupportedException._init(this);
  }

  ServiceNotSupportedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceNotSupportedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceNotSupportedException;
  }

  @override
  void update(void Function(ServiceNotSupportedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceNotSupportedException build() => _build();

  _$ServiceNotSupportedException _build() {
    final _$result = _$v ??
        new _$ServiceNotSupportedException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
