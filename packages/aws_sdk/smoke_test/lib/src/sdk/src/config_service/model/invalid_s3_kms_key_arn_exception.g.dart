// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_s3_kms_key_arn_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidS3KmsKeyArnException extends InvalidS3KmsKeyArnException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidS3KmsKeyArnException(
          [void Function(InvalidS3KmsKeyArnExceptionBuilder)? updates]) =>
      (new InvalidS3KmsKeyArnExceptionBuilder()..update(updates))._build();

  _$InvalidS3KmsKeyArnException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidS3KmsKeyArnException rebuild(
          void Function(InvalidS3KmsKeyArnExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidS3KmsKeyArnExceptionBuilder toBuilder() =>
      new InvalidS3KmsKeyArnExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidS3KmsKeyArnException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidS3KmsKeyArnExceptionBuilder
    implements
        Builder<InvalidS3KmsKeyArnException,
            InvalidS3KmsKeyArnExceptionBuilder> {
  _$InvalidS3KmsKeyArnException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidS3KmsKeyArnExceptionBuilder() {
    InvalidS3KmsKeyArnException._init(this);
  }

  InvalidS3KmsKeyArnExceptionBuilder get _$this {
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
  void replace(InvalidS3KmsKeyArnException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidS3KmsKeyArnException;
  }

  @override
  void update(void Function(InvalidS3KmsKeyArnExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidS3KmsKeyArnException build() => _build();

  _$InvalidS3KmsKeyArnException _build() {
    final _$result = _$v ??
        new _$InvalidS3KmsKeyArnException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
