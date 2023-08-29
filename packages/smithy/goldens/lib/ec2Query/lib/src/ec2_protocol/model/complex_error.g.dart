// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplexError extends ComplexError {
  @override
  final String? topLevel;
  @override
  final ComplexNestedErrorData? nested;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ComplexError([void Function(ComplexErrorBuilder)? updates]) =>
      (new ComplexErrorBuilder()..update(updates))._build();

  _$ComplexError._({this.topLevel, this.nested, this.statusCode, this.headers})
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
        topLevel == other.topLevel &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topLevel.hashCode);
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplexErrorBuilder
    implements Builder<ComplexError, ComplexErrorBuilder> {
  _$ComplexError? _$v;

  String? _topLevel;
  String? get topLevel => _$this._topLevel;
  set topLevel(String? topLevel) => _$this._topLevel = topLevel;

  ComplexNestedErrorDataBuilder? _nested;
  ComplexNestedErrorDataBuilder get nested =>
      _$this._nested ??= new ComplexNestedErrorDataBuilder();
  set nested(ComplexNestedErrorDataBuilder? nested) => _$this._nested = nested;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ComplexErrorBuilder();

  ComplexErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topLevel = $v.topLevel;
      _nested = $v.nested?.toBuilder();
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
              topLevel: topLevel,
              nested: _nested?.build(),
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
