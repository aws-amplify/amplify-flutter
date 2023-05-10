// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.malformed_certificate_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedCertificateException extends MalformedCertificateException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$MalformedCertificateException(
          [void Function(MalformedCertificateExceptionBuilder)? updates]) =>
      (new MalformedCertificateExceptionBuilder()..update(updates))._build();

  _$MalformedCertificateException._({this.message, this.headers}) : super._();

  @override
  MalformedCertificateException rebuild(
          void Function(MalformedCertificateExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedCertificateExceptionBuilder toBuilder() =>
      new MalformedCertificateExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedCertificateException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedCertificateExceptionBuilder
    implements
        Builder<MalformedCertificateException,
            MalformedCertificateExceptionBuilder> {
  _$MalformedCertificateException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MalformedCertificateExceptionBuilder() {
    MalformedCertificateException._init(this);
  }

  MalformedCertificateExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedCertificateException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedCertificateException;
  }

  @override
  void update(void Function(MalformedCertificateExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedCertificateException build() => _build();

  _$MalformedCertificateException _build() {
    final _$result = _$v ??
        new _$MalformedCertificateException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
