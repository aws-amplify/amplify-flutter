// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.no_available_organization_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoAvailableOrganizationException
    extends NoAvailableOrganizationException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoAvailableOrganizationException(
          [void Function(NoAvailableOrganizationExceptionBuilder)? updates]) =>
      (new NoAvailableOrganizationExceptionBuilder()..update(updates))._build();

  _$NoAvailableOrganizationException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoAvailableOrganizationException rebuild(
          void Function(NoAvailableOrganizationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoAvailableOrganizationExceptionBuilder toBuilder() =>
      new NoAvailableOrganizationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoAvailableOrganizationException &&
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

class NoAvailableOrganizationExceptionBuilder
    implements
        Builder<NoAvailableOrganizationException,
            NoAvailableOrganizationExceptionBuilder> {
  _$NoAvailableOrganizationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoAvailableOrganizationExceptionBuilder() {
    NoAvailableOrganizationException._init(this);
  }

  NoAvailableOrganizationExceptionBuilder get _$this {
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
  void replace(NoAvailableOrganizationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoAvailableOrganizationException;
  }

  @override
  void update(void Function(NoAvailableOrganizationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoAvailableOrganizationException build() => _build();

  _$NoAvailableOrganizationException _build() {
    final _$result = _$v ??
        new _$NoAvailableOrganizationException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
