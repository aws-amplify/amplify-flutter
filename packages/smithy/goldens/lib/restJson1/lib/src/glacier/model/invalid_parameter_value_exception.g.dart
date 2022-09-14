// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.glacier.model.invalid_parameter_value_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidParameterValueException extends InvalidParameterValueException {
  @override
  final String? code;
  @override
  final String? message;
  @override
  final String? type;
  @override
  final Map<String, String>? headers;

  factory _$InvalidParameterValueException(
          [void Function(InvalidParameterValueExceptionBuilder)? updates]) =>
      (new InvalidParameterValueExceptionBuilder()..update(updates))._build();

  _$InvalidParameterValueException._(
      {this.code, this.message, this.type, this.headers})
      : super._();

  @override
  InvalidParameterValueException rebuild(
          void Function(InvalidParameterValueExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidParameterValueExceptionBuilder toBuilder() =>
      new InvalidParameterValueExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidParameterValueException &&
        code == other.code &&
        message == other.message &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), message.hashCode), type.hashCode));
  }
}

class InvalidParameterValueExceptionBuilder
    implements
        Builder<InvalidParameterValueException,
            InvalidParameterValueExceptionBuilder> {
  _$InvalidParameterValueException? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidParameterValueExceptionBuilder() {
    InvalidParameterValueException._init(this);
  }

  InvalidParameterValueExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _type = $v.type;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidParameterValueException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidParameterValueException;
  }

  @override
  void update(void Function(InvalidParameterValueExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidParameterValueException build() => _build();

  _$InvalidParameterValueException _build() {
    final _$result = _$v ??
        new _$InvalidParameterValueException._(
            code: code, message: message, type: type, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
