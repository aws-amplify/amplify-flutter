// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity.model.invalid_parameter_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidParameterException extends InvalidParameterException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidParameterException(
          [void Function(InvalidParameterExceptionBuilder)? updates]) =>
      (new InvalidParameterExceptionBuilder()..update(updates))._build();

  _$InvalidParameterException._({this.message, this.headers}) : super._();

  @override
  InvalidParameterException rebuild(
          void Function(InvalidParameterExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidParameterExceptionBuilder toBuilder() =>
      new InvalidParameterExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidParameterException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidParameterExceptionBuilder
    implements
        Builder<InvalidParameterException, InvalidParameterExceptionBuilder> {
  _$InvalidParameterException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidParameterExceptionBuilder() {
    InvalidParameterException._init(this);
  }

  InvalidParameterExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidParameterException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidParameterException;
  }

  @override
  void update(void Function(InvalidParameterExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidParameterException build() => _build();

  _$InvalidParameterException _build() {
    final _$result = _$v ??
        new _$InvalidParameterException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
