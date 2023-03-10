// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.invalid_lambda_response_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidLambdaResponseException extends InvalidLambdaResponseException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidLambdaResponseException(
          [void Function(InvalidLambdaResponseExceptionBuilder)? updates]) =>
      (new InvalidLambdaResponseExceptionBuilder()..update(updates))._build();

  _$InvalidLambdaResponseException._({this.message, this.headers}) : super._();

  @override
  InvalidLambdaResponseException rebuild(
          void Function(InvalidLambdaResponseExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidLambdaResponseExceptionBuilder toBuilder() =>
      new InvalidLambdaResponseExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidLambdaResponseException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidLambdaResponseExceptionBuilder
    implements
        Builder<InvalidLambdaResponseException,
            InvalidLambdaResponseExceptionBuilder> {
  _$InvalidLambdaResponseException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidLambdaResponseExceptionBuilder() {
    InvalidLambdaResponseException._init(this);
  }

  InvalidLambdaResponseExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidLambdaResponseException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidLambdaResponseException;
  }

  @override
  void update(void Function(InvalidLambdaResponseExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidLambdaResponseException build() => _build();

  _$InvalidLambdaResponseException _build() {
    final _$result = _$v ??
        new _$InvalidLambdaResponseException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
