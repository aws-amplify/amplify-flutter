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
    return $jf($jc(0, message.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
