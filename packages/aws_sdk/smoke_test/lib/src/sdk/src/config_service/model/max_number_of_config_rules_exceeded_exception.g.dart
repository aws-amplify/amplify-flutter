// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.max_number_of_config_rules_exceeded_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxNumberOfConfigRulesExceededException
    extends MaxNumberOfConfigRulesExceededException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$MaxNumberOfConfigRulesExceededException(
          [void Function(MaxNumberOfConfigRulesExceededExceptionBuilder)?
              updates]) =>
      (new MaxNumberOfConfigRulesExceededExceptionBuilder()..update(updates))
          ._build();

  _$MaxNumberOfConfigRulesExceededException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  MaxNumberOfConfigRulesExceededException rebuild(
          void Function(MaxNumberOfConfigRulesExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxNumberOfConfigRulesExceededExceptionBuilder toBuilder() =>
      new MaxNumberOfConfigRulesExceededExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxNumberOfConfigRulesExceededException &&
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

class MaxNumberOfConfigRulesExceededExceptionBuilder
    implements
        Builder<MaxNumberOfConfigRulesExceededException,
            MaxNumberOfConfigRulesExceededExceptionBuilder> {
  _$MaxNumberOfConfigRulesExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MaxNumberOfConfigRulesExceededExceptionBuilder() {
    MaxNumberOfConfigRulesExceededException._init(this);
  }

  MaxNumberOfConfigRulesExceededExceptionBuilder get _$this {
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
  void replace(MaxNumberOfConfigRulesExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxNumberOfConfigRulesExceededException;
  }

  @override
  void update(
      void Function(MaxNumberOfConfigRulesExceededExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxNumberOfConfigRulesExceededException build() => _build();

  _$MaxNumberOfConfigRulesExceededException _build() {
    final _$result = _$v ??
        new _$MaxNumberOfConfigRulesExceededException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
