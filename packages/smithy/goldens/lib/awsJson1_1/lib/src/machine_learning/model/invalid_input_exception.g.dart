// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.machine_learning.model.invalid_input_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidInputException extends InvalidInputException {
  @override
  final int? code;
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidInputException(
          [void Function(InvalidInputExceptionBuilder)? updates]) =>
      (new InvalidInputExceptionBuilder()..update(updates))._build();

  _$InvalidInputException._({this.code, this.message, this.headers})
      : super._();

  @override
  InvalidInputException rebuild(
          void Function(InvalidInputExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidInputExceptionBuilder toBuilder() =>
      new InvalidInputExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidInputException &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, code.hashCode), message.hashCode));
  }
}

class InvalidInputExceptionBuilder
    implements Builder<InvalidInputException, InvalidInputExceptionBuilder> {
  _$InvalidInputException? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidInputExceptionBuilder() {
    InvalidInputException._init(this);
  }

  InvalidInputExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidInputException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidInputException;
  }

  @override
  void update(void Function(InvalidInputExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidInputException build() => _build();

  _$InvalidInputException _build() {
    final _$result = _$v ??
        new _$InvalidInputException._(
            code: code, message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
