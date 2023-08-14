// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_identity_pool_configuration_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidIdentityPoolConfigurationException
    extends InvalidIdentityPoolConfigurationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidIdentityPoolConfigurationException(
          [void Function(InvalidIdentityPoolConfigurationExceptionBuilder)?
              updates]) =>
      (new InvalidIdentityPoolConfigurationExceptionBuilder()..update(updates))
          ._build();

  _$InvalidIdentityPoolConfigurationException._({this.message, this.headers})
      : super._();

  @override
  InvalidIdentityPoolConfigurationException rebuild(
          void Function(InvalidIdentityPoolConfigurationExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidIdentityPoolConfigurationExceptionBuilder toBuilder() =>
      new InvalidIdentityPoolConfigurationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidIdentityPoolConfigurationException &&
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

class InvalidIdentityPoolConfigurationExceptionBuilder
    implements
        Builder<InvalidIdentityPoolConfigurationException,
            InvalidIdentityPoolConfigurationExceptionBuilder> {
  _$InvalidIdentityPoolConfigurationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidIdentityPoolConfigurationExceptionBuilder();

  InvalidIdentityPoolConfigurationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidIdentityPoolConfigurationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidIdentityPoolConfigurationException;
  }

  @override
  void update(
      void Function(InvalidIdentityPoolConfigurationExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidIdentityPoolConfigurationException build() => _build();

  _$InvalidIdentityPoolConfigurationException _build() {
    final _$result = _$v ??
        new _$InvalidIdentityPoolConfigurationException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
