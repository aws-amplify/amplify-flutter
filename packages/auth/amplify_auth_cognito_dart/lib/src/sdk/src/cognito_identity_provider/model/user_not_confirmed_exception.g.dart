// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.user_not_confirmed_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserNotConfirmedException extends UserNotConfirmedException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UserNotConfirmedException(
          [void Function(UserNotConfirmedExceptionBuilder)? updates]) =>
      (new UserNotConfirmedExceptionBuilder()..update(updates))._build();

  _$UserNotConfirmedException._({this.message, this.headers}) : super._();

  @override
  UserNotConfirmedException rebuild(
          void Function(UserNotConfirmedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserNotConfirmedExceptionBuilder toBuilder() =>
      new UserNotConfirmedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserNotConfirmedException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserNotConfirmedExceptionBuilder
    implements
        Builder<UserNotConfirmedException, UserNotConfirmedExceptionBuilder> {
  _$UserNotConfirmedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UserNotConfirmedExceptionBuilder() {
    UserNotConfirmedException._init(this);
  }

  UserNotConfirmedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserNotConfirmedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserNotConfirmedException;
  }

  @override
  void update(void Function(UserNotConfirmedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserNotConfirmedException build() => _build();

  _$UserNotConfirmedException _build() {
    final _$result = _$v ??
        new _$UserNotConfirmedException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
