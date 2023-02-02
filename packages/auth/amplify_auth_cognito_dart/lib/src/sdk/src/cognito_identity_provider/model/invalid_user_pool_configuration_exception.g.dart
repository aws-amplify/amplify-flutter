// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.invalid_user_pool_configuration_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidUserPoolConfigurationException
    extends InvalidUserPoolConfigurationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidUserPoolConfigurationException(
          [void Function(InvalidUserPoolConfigurationExceptionBuilder)?
              updates]) =>
      (new InvalidUserPoolConfigurationExceptionBuilder()..update(updates))
          ._build();

  _$InvalidUserPoolConfigurationException._({this.message, this.headers})
      : super._();

  @override
  InvalidUserPoolConfigurationException rebuild(
          void Function(InvalidUserPoolConfigurationExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidUserPoolConfigurationExceptionBuilder toBuilder() =>
      new InvalidUserPoolConfigurationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidUserPoolConfigurationException &&
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

class InvalidUserPoolConfigurationExceptionBuilder
    implements
        Builder<InvalidUserPoolConfigurationException,
            InvalidUserPoolConfigurationExceptionBuilder> {
  _$InvalidUserPoolConfigurationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidUserPoolConfigurationExceptionBuilder() {
    InvalidUserPoolConfigurationException._init(this);
  }

  InvalidUserPoolConfigurationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidUserPoolConfigurationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidUserPoolConfigurationException;
  }

  @override
  void update(
      void Function(InvalidUserPoolConfigurationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidUserPoolConfigurationException build() => _build();

  _$InvalidUserPoolConfigurationException _build() {
    final _$result = _$v ??
        new _$InvalidUserPoolConfigurationException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
