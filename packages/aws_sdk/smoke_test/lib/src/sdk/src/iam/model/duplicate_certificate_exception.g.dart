// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.duplicate_certificate_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DuplicateCertificateException extends DuplicateCertificateException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$DuplicateCertificateException(
          [void Function(DuplicateCertificateExceptionBuilder)? updates]) =>
      (new DuplicateCertificateExceptionBuilder()..update(updates))._build();

  _$DuplicateCertificateException._({this.message, this.headers}) : super._();

  @override
  DuplicateCertificateException rebuild(
          void Function(DuplicateCertificateExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DuplicateCertificateExceptionBuilder toBuilder() =>
      new DuplicateCertificateExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DuplicateCertificateException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DuplicateCertificateExceptionBuilder
    implements
        Builder<DuplicateCertificateException,
            DuplicateCertificateExceptionBuilder> {
  _$DuplicateCertificateException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  DuplicateCertificateExceptionBuilder() {
    DuplicateCertificateException._init(this);
  }

  DuplicateCertificateExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DuplicateCertificateException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DuplicateCertificateException;
  }

  @override
  void update(void Function(DuplicateCertificateExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DuplicateCertificateException build() => _build();

  _$DuplicateCertificateException _build() {
    final _$result = _$v ??
        new _$DuplicateCertificateException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
