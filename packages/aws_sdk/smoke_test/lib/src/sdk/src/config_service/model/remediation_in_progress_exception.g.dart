// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_in_progress_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationInProgressException extends RemediationInProgressException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$RemediationInProgressException(
          [void Function(RemediationInProgressExceptionBuilder)? updates]) =>
      (new RemediationInProgressExceptionBuilder()..update(updates))._build();

  _$RemediationInProgressException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  RemediationInProgressException rebuild(
          void Function(RemediationInProgressExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemediationInProgressExceptionBuilder toBuilder() =>
      new RemediationInProgressExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemediationInProgressException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationInProgressExceptionBuilder
    implements
        Builder<RemediationInProgressException,
            RemediationInProgressExceptionBuilder> {
  _$RemediationInProgressException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  RemediationInProgressExceptionBuilder() {
    RemediationInProgressException._init(this);
  }

  RemediationInProgressExceptionBuilder get _$this {
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
  void replace(RemediationInProgressException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemediationInProgressException;
  }

  @override
  void update(void Function(RemediationInProgressExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemediationInProgressException build() => _build();

  _$RemediationInProgressException _build() {
    final _$result = _$v ??
        new _$RemediationInProgressException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
