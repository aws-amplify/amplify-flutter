// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_configuration_recorder_name_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidConfigurationRecorderNameException
    extends InvalidConfigurationRecorderNameException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidConfigurationRecorderNameException(
          [void Function(InvalidConfigurationRecorderNameExceptionBuilder)?
              updates]) =>
      (new InvalidConfigurationRecorderNameExceptionBuilder()..update(updates))
          ._build();

  _$InvalidConfigurationRecorderNameException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidConfigurationRecorderNameException rebuild(
          void Function(InvalidConfigurationRecorderNameExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidConfigurationRecorderNameExceptionBuilder toBuilder() =>
      new InvalidConfigurationRecorderNameExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidConfigurationRecorderNameException &&
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

class InvalidConfigurationRecorderNameExceptionBuilder
    implements
        Builder<InvalidConfigurationRecorderNameException,
            InvalidConfigurationRecorderNameExceptionBuilder> {
  _$InvalidConfigurationRecorderNameException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidConfigurationRecorderNameExceptionBuilder() {
    InvalidConfigurationRecorderNameException._init(this);
  }

  InvalidConfigurationRecorderNameExceptionBuilder get _$this {
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
  void replace(InvalidConfigurationRecorderNameException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidConfigurationRecorderNameException;
  }

  @override
  void update(
      void Function(InvalidConfigurationRecorderNameExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidConfigurationRecorderNameException build() => _build();

  _$InvalidConfigurationRecorderNameException _build() {
    final _$result = _$v ??
        new _$InvalidConfigurationRecorderNameException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
