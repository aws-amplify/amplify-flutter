// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.enable_software_token_mfa_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableSoftwareTokenMfaException
    extends EnableSoftwareTokenMfaException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$EnableSoftwareTokenMfaException(
          [void Function(EnableSoftwareTokenMfaExceptionBuilder)? updates]) =>
      (new EnableSoftwareTokenMfaExceptionBuilder()..update(updates))._build();

  _$EnableSoftwareTokenMfaException._({this.message, this.headers}) : super._();

  @override
  EnableSoftwareTokenMfaException rebuild(
          void Function(EnableSoftwareTokenMfaExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableSoftwareTokenMfaExceptionBuilder toBuilder() =>
      new EnableSoftwareTokenMfaExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableSoftwareTokenMfaException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableSoftwareTokenMfaExceptionBuilder
    implements
        Builder<EnableSoftwareTokenMfaException,
            EnableSoftwareTokenMfaExceptionBuilder> {
  _$EnableSoftwareTokenMfaException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  EnableSoftwareTokenMfaExceptionBuilder() {
    EnableSoftwareTokenMfaException._init(this);
  }

  EnableSoftwareTokenMfaExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableSoftwareTokenMfaException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableSoftwareTokenMfaException;
  }

  @override
  void update(void Function(EnableSoftwareTokenMfaExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableSoftwareTokenMfaException build() => _build();

  _$EnableSoftwareTokenMfaException _build() {
    final _$result = _$v ??
        new _$EnableSoftwareTokenMfaException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
