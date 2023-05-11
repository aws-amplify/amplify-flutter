// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.credential_report_expired_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialReportExpiredException
    extends CredentialReportExpiredException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$CredentialReportExpiredException(
          [void Function(CredentialReportExpiredExceptionBuilder)? updates]) =>
      (new CredentialReportExpiredExceptionBuilder()..update(updates))._build();

  _$CredentialReportExpiredException._({this.message, this.headers})
      : super._();

  @override
  CredentialReportExpiredException rebuild(
          void Function(CredentialReportExpiredExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialReportExpiredExceptionBuilder toBuilder() =>
      new CredentialReportExpiredExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialReportExpiredException &&
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

class CredentialReportExpiredExceptionBuilder
    implements
        Builder<CredentialReportExpiredException,
            CredentialReportExpiredExceptionBuilder> {
  _$CredentialReportExpiredException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  CredentialReportExpiredExceptionBuilder() {
    CredentialReportExpiredException._init(this);
  }

  CredentialReportExpiredExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialReportExpiredException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialReportExpiredException;
  }

  @override
  void update(void Function(CredentialReportExpiredExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialReportExpiredException build() => _build();

  _$CredentialReportExpiredException _build() {
    final _$result = _$v ??
        new _$CredentialReportExpiredException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
