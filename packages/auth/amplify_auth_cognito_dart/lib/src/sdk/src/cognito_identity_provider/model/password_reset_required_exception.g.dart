// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.password_reset_required_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordResetRequiredException extends PasswordResetRequiredException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$PasswordResetRequiredException(
          [void Function(PasswordResetRequiredExceptionBuilder)? updates]) =>
      (new PasswordResetRequiredExceptionBuilder()..update(updates))._build();

  _$PasswordResetRequiredException._({this.message, this.headers}) : super._();

  @override
  PasswordResetRequiredException rebuild(
          void Function(PasswordResetRequiredExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordResetRequiredExceptionBuilder toBuilder() =>
      new PasswordResetRequiredExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordResetRequiredException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PasswordResetRequiredExceptionBuilder
    implements
        Builder<PasswordResetRequiredException,
            PasswordResetRequiredExceptionBuilder> {
  _$PasswordResetRequiredException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PasswordResetRequiredExceptionBuilder() {
    PasswordResetRequiredException._init(this);
  }

  PasswordResetRequiredExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordResetRequiredException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordResetRequiredException;
  }

  @override
  void update(void Function(PasswordResetRequiredExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordResetRequiredException build() => _build();

  _$PasswordResetRequiredException _build() {
    final _$result = _$v ??
        new _$PasswordResetRequiredException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
