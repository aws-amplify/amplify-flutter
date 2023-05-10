// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.credential_report_not_ready_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialReportNotReadyException
    extends CredentialReportNotReadyException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$CredentialReportNotReadyException(
          [void Function(CredentialReportNotReadyExceptionBuilder)? updates]) =>
      (new CredentialReportNotReadyExceptionBuilder()..update(updates))
          ._build();

  _$CredentialReportNotReadyException._({this.message, this.headers})
      : super._();

  @override
  CredentialReportNotReadyException rebuild(
          void Function(CredentialReportNotReadyExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialReportNotReadyExceptionBuilder toBuilder() =>
      new CredentialReportNotReadyExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialReportNotReadyException &&
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

class CredentialReportNotReadyExceptionBuilder
    implements
        Builder<CredentialReportNotReadyException,
            CredentialReportNotReadyExceptionBuilder> {
  _$CredentialReportNotReadyException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  CredentialReportNotReadyExceptionBuilder() {
    CredentialReportNotReadyException._init(this);
  }

  CredentialReportNotReadyExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialReportNotReadyException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialReportNotReadyException;
  }

  @override
  void update(
      void Function(CredentialReportNotReadyExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialReportNotReadyException build() => _build();

  _$CredentialReportNotReadyException _build() {
    final _$result = _$v ??
        new _$CredentialReportNotReadyException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
