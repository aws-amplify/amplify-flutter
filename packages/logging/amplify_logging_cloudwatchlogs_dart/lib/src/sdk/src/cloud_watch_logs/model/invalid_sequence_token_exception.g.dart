// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.invalid_sequence_token_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidSequenceTokenException extends InvalidSequenceTokenException {
  @override
  final String? expectedSequenceToken;
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidSequenceTokenException(
          [void Function(InvalidSequenceTokenExceptionBuilder)? updates]) =>
      (new InvalidSequenceTokenExceptionBuilder()..update(updates))._build();

  _$InvalidSequenceTokenException._(
      {this.expectedSequenceToken, this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidSequenceTokenException rebuild(
          void Function(InvalidSequenceTokenExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidSequenceTokenExceptionBuilder toBuilder() =>
      new InvalidSequenceTokenExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidSequenceTokenException &&
        expectedSequenceToken == other.expectedSequenceToken &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, expectedSequenceToken.hashCode), message.hashCode));
  }
}

class InvalidSequenceTokenExceptionBuilder
    implements
        Builder<InvalidSequenceTokenException,
            InvalidSequenceTokenExceptionBuilder> {
  _$InvalidSequenceTokenException? _$v;

  String? _expectedSequenceToken;
  String? get expectedSequenceToken => _$this._expectedSequenceToken;
  set expectedSequenceToken(String? expectedSequenceToken) =>
      _$this._expectedSequenceToken = expectedSequenceToken;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidSequenceTokenExceptionBuilder() {
    InvalidSequenceTokenException._init(this);
  }

  InvalidSequenceTokenExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expectedSequenceToken = $v.expectedSequenceToken;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidSequenceTokenException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidSequenceTokenException;
  }

  @override
  void update(void Function(InvalidSequenceTokenExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidSequenceTokenException build() => _build();

  _$InvalidSequenceTokenException _build() {
    final _$result = _$v ??
        new _$InvalidSequenceTokenException._(
            expectedSequenceToken: expectedSequenceToken,
            message: message,
            statusCode: statusCode,
            headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
