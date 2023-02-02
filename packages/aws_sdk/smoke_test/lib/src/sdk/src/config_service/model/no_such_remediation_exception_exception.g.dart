// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.no_such_remediation_exception_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchRemediationExceptionException
    extends NoSuchRemediationExceptionException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchRemediationExceptionException(
          [void Function(NoSuchRemediationExceptionExceptionBuilder)?
              updates]) =>
      (new NoSuchRemediationExceptionExceptionBuilder()..update(updates))
          ._build();

  _$NoSuchRemediationExceptionException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchRemediationExceptionException rebuild(
          void Function(NoSuchRemediationExceptionExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchRemediationExceptionExceptionBuilder toBuilder() =>
      new NoSuchRemediationExceptionExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchRemediationExceptionException &&
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

class NoSuchRemediationExceptionExceptionBuilder
    implements
        Builder<NoSuchRemediationExceptionException,
            NoSuchRemediationExceptionExceptionBuilder> {
  _$NoSuchRemediationExceptionException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchRemediationExceptionExceptionBuilder() {
    NoSuchRemediationExceptionException._init(this);
  }

  NoSuchRemediationExceptionExceptionBuilder get _$this {
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
  void replace(NoSuchRemediationExceptionException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchRemediationExceptionException;
  }

  @override
  void update(
      void Function(NoSuchRemediationExceptionExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchRemediationExceptionException build() => _build();

  _$NoSuchRemediationExceptionException _build() {
    final _$result = _$v ??
        new _$NoSuchRemediationExceptionException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
