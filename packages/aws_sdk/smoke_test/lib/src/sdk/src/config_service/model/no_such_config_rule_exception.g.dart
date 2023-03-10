// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.no_such_config_rule_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchConfigRuleException extends NoSuchConfigRuleException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchConfigRuleException(
          [void Function(NoSuchConfigRuleExceptionBuilder)? updates]) =>
      (new NoSuchConfigRuleExceptionBuilder()..update(updates))._build();

  _$NoSuchConfigRuleException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchConfigRuleException rebuild(
          void Function(NoSuchConfigRuleExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchConfigRuleExceptionBuilder toBuilder() =>
      new NoSuchConfigRuleExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchConfigRuleException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoSuchConfigRuleExceptionBuilder
    implements
        Builder<NoSuchConfigRuleException, NoSuchConfigRuleExceptionBuilder> {
  _$NoSuchConfigRuleException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchConfigRuleExceptionBuilder() {
    NoSuchConfigRuleException._init(this);
  }

  NoSuchConfigRuleExceptionBuilder get _$this {
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
  void replace(NoSuchConfigRuleException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchConfigRuleException;
  }

  @override
  void update(void Function(NoSuchConfigRuleExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchConfigRuleException build() => _build();

  _$NoSuchConfigRuleException _build() {
    final _$result = _$v ??
        new _$NoSuchConfigRuleException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
