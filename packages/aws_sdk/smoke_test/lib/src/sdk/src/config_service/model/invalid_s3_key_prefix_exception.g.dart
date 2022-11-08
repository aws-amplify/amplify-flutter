// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_s3_key_prefix_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidS3KeyPrefixException extends InvalidS3KeyPrefixException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidS3KeyPrefixException(
          [void Function(InvalidS3KeyPrefixExceptionBuilder)? updates]) =>
      (new InvalidS3KeyPrefixExceptionBuilder()..update(updates))._build();

  _$InvalidS3KeyPrefixException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidS3KeyPrefixException rebuild(
          void Function(InvalidS3KeyPrefixExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidS3KeyPrefixExceptionBuilder toBuilder() =>
      new InvalidS3KeyPrefixExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidS3KeyPrefixException && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class InvalidS3KeyPrefixExceptionBuilder
    implements
        Builder<InvalidS3KeyPrefixException,
            InvalidS3KeyPrefixExceptionBuilder> {
  _$InvalidS3KeyPrefixException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidS3KeyPrefixExceptionBuilder() {
    InvalidS3KeyPrefixException._init(this);
  }

  InvalidS3KeyPrefixExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidS3KeyPrefixException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidS3KeyPrefixException;
  }

  @override
  void update(void Function(InvalidS3KeyPrefixExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidS3KeyPrefixException build() => _build();

  _$InvalidS3KeyPrefixException _build() {
    final _$result = _$v ??
        new _$InvalidS3KeyPrefixException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
