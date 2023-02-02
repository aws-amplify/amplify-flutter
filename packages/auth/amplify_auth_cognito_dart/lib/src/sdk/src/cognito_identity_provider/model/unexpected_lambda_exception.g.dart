// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.unexpected_lambda_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnexpectedLambdaException extends UnexpectedLambdaException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UnexpectedLambdaException(
          [void Function(UnexpectedLambdaExceptionBuilder)? updates]) =>
      (new UnexpectedLambdaExceptionBuilder()..update(updates))._build();

  _$UnexpectedLambdaException._({this.message, this.headers}) : super._();

  @override
  UnexpectedLambdaException rebuild(
          void Function(UnexpectedLambdaExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnexpectedLambdaExceptionBuilder toBuilder() =>
      new UnexpectedLambdaExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnexpectedLambdaException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnexpectedLambdaExceptionBuilder
    implements
        Builder<UnexpectedLambdaException, UnexpectedLambdaExceptionBuilder> {
  _$UnexpectedLambdaException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UnexpectedLambdaExceptionBuilder() {
    UnexpectedLambdaException._init(this);
  }

  UnexpectedLambdaExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnexpectedLambdaException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnexpectedLambdaException;
  }

  @override
  void update(void Function(UnexpectedLambdaExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnexpectedLambdaException build() => _build();

  _$UnexpectedLambdaException _build() {
    final _$result = _$v ??
        new _$UnexpectedLambdaException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
