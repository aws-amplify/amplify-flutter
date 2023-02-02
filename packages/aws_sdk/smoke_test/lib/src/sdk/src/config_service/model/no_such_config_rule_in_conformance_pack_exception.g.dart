// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.no_such_config_rule_in_conformance_pack_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchConfigRuleInConformancePackException
    extends NoSuchConfigRuleInConformancePackException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchConfigRuleInConformancePackException(
          [void Function(NoSuchConfigRuleInConformancePackExceptionBuilder)?
              updates]) =>
      (new NoSuchConfigRuleInConformancePackExceptionBuilder()..update(updates))
          ._build();

  _$NoSuchConfigRuleInConformancePackException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchConfigRuleInConformancePackException rebuild(
          void Function(NoSuchConfigRuleInConformancePackExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchConfigRuleInConformancePackExceptionBuilder toBuilder() =>
      new NoSuchConfigRuleInConformancePackExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchConfigRuleInConformancePackException &&
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

class NoSuchConfigRuleInConformancePackExceptionBuilder
    implements
        Builder<NoSuchConfigRuleInConformancePackException,
            NoSuchConfigRuleInConformancePackExceptionBuilder> {
  _$NoSuchConfigRuleInConformancePackException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchConfigRuleInConformancePackExceptionBuilder() {
    NoSuchConfigRuleInConformancePackException._init(this);
  }

  NoSuchConfigRuleInConformancePackExceptionBuilder get _$this {
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
  void replace(NoSuchConfigRuleInConformancePackException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchConfigRuleInConformancePackException;
  }

  @override
  void update(
      void Function(NoSuchConfigRuleInConformancePackExceptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchConfigRuleInConformancePackException build() => _build();

  _$NoSuchConfigRuleInConformancePackException _build() {
    final _$result = _$v ??
        new _$NoSuchConfigRuleInConformancePackException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
