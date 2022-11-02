// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.json_protocol.model.complex_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplexError extends ComplexError {
  @override
  final _i3.ComplexNestedErrorData? nested;
  @override
  final String? topLevel;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ComplexError([void Function(ComplexErrorBuilder)? updates]) =>
      (new ComplexErrorBuilder()..update(updates))._build();

  _$ComplexError._({this.nested, this.topLevel, this.statusCode, this.headers})
      : super._();

  @override
  ComplexError rebuild(void Function(ComplexErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplexErrorBuilder toBuilder() => new ComplexErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplexError &&
        nested == other.nested &&
        topLevel == other.topLevel;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nested.hashCode), topLevel.hashCode));
  }
}

class ComplexErrorBuilder
    implements Builder<ComplexError, ComplexErrorBuilder> {
  _$ComplexError? _$v;

  _i3.ComplexNestedErrorDataBuilder? _nested;
  _i3.ComplexNestedErrorDataBuilder get nested =>
      _$this._nested ??= new _i3.ComplexNestedErrorDataBuilder();
  set nested(_i3.ComplexNestedErrorDataBuilder? nested) =>
      _$this._nested = nested;

  String? _topLevel;
  String? get topLevel => _$this._topLevel;
  set topLevel(String? topLevel) => _$this._topLevel = topLevel;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ComplexErrorBuilder() {
    ComplexError._init(this);
  }

  ComplexErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _topLevel = $v.topLevel;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplexError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplexError;
  }

  @override
  void update(void Function(ComplexErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplexError build() => _build();

  _$ComplexError _build() {
    _$ComplexError _$result;
    try {
      _$result = _$v ??
          new _$ComplexError._(
              nested: _nested?.build(),
              topLevel: topLevel,
              statusCode: statusCode,
              headers: headers);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComplexError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
