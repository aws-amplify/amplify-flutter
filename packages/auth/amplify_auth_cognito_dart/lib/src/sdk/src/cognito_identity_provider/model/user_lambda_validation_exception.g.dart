// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.user_lambda_validation_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLambdaValidationException extends UserLambdaValidationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UserLambdaValidationException(
          [void Function(UserLambdaValidationExceptionBuilder)? updates]) =>
      (new UserLambdaValidationExceptionBuilder()..update(updates))._build();

  _$UserLambdaValidationException._({this.message, this.headers}) : super._();

  @override
  UserLambdaValidationException rebuild(
          void Function(UserLambdaValidationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLambdaValidationExceptionBuilder toBuilder() =>
      new UserLambdaValidationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLambdaValidationException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserLambdaValidationExceptionBuilder
    implements
        Builder<UserLambdaValidationException,
            UserLambdaValidationExceptionBuilder> {
  _$UserLambdaValidationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UserLambdaValidationExceptionBuilder() {
    UserLambdaValidationException._init(this);
  }

  UserLambdaValidationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLambdaValidationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLambdaValidationException;
  }

  @override
  void update(void Function(UserLambdaValidationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLambdaValidationException build() => _build();

  _$UserLambdaValidationException _build() {
    final _$result = _$v ??
        new _$UserLambdaValidationException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
