// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.credential_report_not_present_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialReportNotPresentException
    extends CredentialReportNotPresentException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$CredentialReportNotPresentException(
          [void Function(CredentialReportNotPresentExceptionBuilder)?
              updates]) =>
      (new CredentialReportNotPresentExceptionBuilder()..update(updates))
          ._build();

  _$CredentialReportNotPresentException._({this.message, this.headers})
      : super._();

  @override
  CredentialReportNotPresentException rebuild(
          void Function(CredentialReportNotPresentExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialReportNotPresentExceptionBuilder toBuilder() =>
      new CredentialReportNotPresentExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialReportNotPresentException &&
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

class CredentialReportNotPresentExceptionBuilder
    implements
        Builder<CredentialReportNotPresentException,
            CredentialReportNotPresentExceptionBuilder> {
  _$CredentialReportNotPresentException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  CredentialReportNotPresentExceptionBuilder() {
    CredentialReportNotPresentException._init(this);
  }

  CredentialReportNotPresentExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialReportNotPresentException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialReportNotPresentException;
  }

  @override
  void update(
      void Function(CredentialReportNotPresentExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialReportNotPresentException build() => _build();

  _$CredentialReportNotPresentException _build() {
    final _$result = _$v ??
        new _$CredentialReportNotPresentException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
