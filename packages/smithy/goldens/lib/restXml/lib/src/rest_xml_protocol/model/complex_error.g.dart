// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.rest_xml_protocol.model.complex_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplexError extends ComplexError {
  @override
  final String? header;
  @override
  final _i3.ComplexNestedErrorData? nested;
  @override
  final String? topLevel;
  @override
  final Map<String, String>? headers;

  factory _$ComplexError([void Function(ComplexErrorBuilder)? updates]) =>
      (new ComplexErrorBuilder()..update(updates))._build();

  _$ComplexError._({this.header, this.nested, this.topLevel, this.headers})
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
        header == other.header &&
        nested == other.nested &&
        topLevel == other.topLevel;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, header.hashCode), nested.hashCode), topLevel.hashCode));
  }
}

class ComplexErrorBuilder
    implements Builder<ComplexError, ComplexErrorBuilder> {
  _$ComplexError? _$v;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  _i3.ComplexNestedErrorDataBuilder? _nested;
  _i3.ComplexNestedErrorDataBuilder get nested =>
      _$this._nested ??= new _i3.ComplexNestedErrorDataBuilder();
  set nested(_i3.ComplexNestedErrorDataBuilder? nested) =>
      _$this._nested = nested;

  String? _topLevel;
  String? get topLevel => _$this._topLevel;
  set topLevel(String? topLevel) => _$this._topLevel = topLevel;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ComplexErrorBuilder() {
    ComplexError._init(this);
  }

  ComplexErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _header = $v.header;
      _nested = $v.nested?.toBuilder();
      _topLevel = $v.topLevel;
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
              header: header,
              nested: _nested?.build(),
              topLevel: topLevel,
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

class _$ComplexErrorPayload extends ComplexErrorPayload {
  @override
  final _i3.ComplexNestedErrorData? nested;
  @override
  final String? topLevel;

  factory _$ComplexErrorPayload(
          [void Function(ComplexErrorPayloadBuilder)? updates]) =>
      (new ComplexErrorPayloadBuilder()..update(updates))._build();

  _$ComplexErrorPayload._({this.nested, this.topLevel}) : super._();

  @override
  ComplexErrorPayload rebuild(
          void Function(ComplexErrorPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplexErrorPayloadBuilder toBuilder() =>
      new ComplexErrorPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplexErrorPayload &&
        nested == other.nested &&
        topLevel == other.topLevel;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nested.hashCode), topLevel.hashCode));
  }
}

class ComplexErrorPayloadBuilder
    implements Builder<ComplexErrorPayload, ComplexErrorPayloadBuilder> {
  _$ComplexErrorPayload? _$v;

  _i3.ComplexNestedErrorDataBuilder? _nested;
  _i3.ComplexNestedErrorDataBuilder get nested =>
      _$this._nested ??= new _i3.ComplexNestedErrorDataBuilder();
  set nested(_i3.ComplexNestedErrorDataBuilder? nested) =>
      _$this._nested = nested;

  String? _topLevel;
  String? get topLevel => _$this._topLevel;
  set topLevel(String? topLevel) => _$this._topLevel = topLevel;

  ComplexErrorPayloadBuilder() {
    ComplexErrorPayload._init(this);
  }

  ComplexErrorPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _topLevel = $v.topLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplexErrorPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplexErrorPayload;
  }

  @override
  void update(void Function(ComplexErrorPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplexErrorPayload build() => _build();

  _$ComplexErrorPayload _build() {
    _$ComplexErrorPayload _$result;
    try {
      _$result = _$v ??
          new _$ComplexErrorPayload._(
              nested: _nested?.build(), topLevel: topLevel);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComplexErrorPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
