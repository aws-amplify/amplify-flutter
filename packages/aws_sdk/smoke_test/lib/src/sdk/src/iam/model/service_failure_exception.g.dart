// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.service_failure_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceFailureException extends ServiceFailureException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ServiceFailureException(
          [void Function(ServiceFailureExceptionBuilder)? updates]) =>
      (new ServiceFailureExceptionBuilder()..update(updates))._build();

  _$ServiceFailureException._({this.message, this.headers}) : super._();

  @override
  ServiceFailureException rebuild(
          void Function(ServiceFailureExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceFailureExceptionBuilder toBuilder() =>
      new ServiceFailureExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceFailureException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceFailureExceptionBuilder
    implements
        Builder<ServiceFailureException, ServiceFailureExceptionBuilder> {
  _$ServiceFailureException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ServiceFailureExceptionBuilder() {
    ServiceFailureException._init(this);
  }

  ServiceFailureExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceFailureException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceFailureException;
  }

  @override
  void update(void Function(ServiceFailureExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceFailureException build() => _build();

  _$ServiceFailureException _build() {
    final _$result = _$v ??
        new _$ServiceFailureException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
