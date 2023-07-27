// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'no_such_remediation_configuration_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchRemediationConfigurationException
    extends NoSuchRemediationConfigurationException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchRemediationConfigurationException(
          [void Function(NoSuchRemediationConfigurationExceptionBuilder)?
              updates]) =>
      (new NoSuchRemediationConfigurationExceptionBuilder()..update(updates))
          ._build();

  _$NoSuchRemediationConfigurationException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchRemediationConfigurationException rebuild(
          void Function(NoSuchRemediationConfigurationExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchRemediationConfigurationExceptionBuilder toBuilder() =>
      new NoSuchRemediationConfigurationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchRemediationConfigurationException &&
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

class NoSuchRemediationConfigurationExceptionBuilder
    implements
        Builder<NoSuchRemediationConfigurationException,
            NoSuchRemediationConfigurationExceptionBuilder> {
  _$NoSuchRemediationConfigurationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchRemediationConfigurationExceptionBuilder();

  NoSuchRemediationConfigurationExceptionBuilder get _$this {
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
  void replace(NoSuchRemediationConfigurationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchRemediationConfigurationException;
  }

  @override
  void update(
      void Function(NoSuchRemediationConfigurationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchRemediationConfigurationException build() => _build();

  _$NoSuchRemediationConfigurationException _build() {
    final _$result = _$v ??
        new _$NoSuchRemediationConfigurationException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
