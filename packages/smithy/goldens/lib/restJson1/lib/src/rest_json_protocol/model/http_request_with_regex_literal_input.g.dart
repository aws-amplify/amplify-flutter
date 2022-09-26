// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.http_request_with_regex_literal_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequestWithRegexLiteralInput
    extends HttpRequestWithRegexLiteralInput {
  @override
  final String str;

  factory _$HttpRequestWithRegexLiteralInput(
          [void Function(HttpRequestWithRegexLiteralInputBuilder)? updates]) =>
      (new HttpRequestWithRegexLiteralInputBuilder()..update(updates))._build();

  _$HttpRequestWithRegexLiteralInput._({required this.str}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        str, r'HttpRequestWithRegexLiteralInput', 'str');
  }

  @override
  HttpRequestWithRegexLiteralInput rebuild(
          void Function(HttpRequestWithRegexLiteralInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithRegexLiteralInputBuilder toBuilder() =>
      new HttpRequestWithRegexLiteralInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithRegexLiteralInput && str == other.str;
  }

  @override
  int get hashCode {
    return $jf($jc(0, str.hashCode));
  }
}

class HttpRequestWithRegexLiteralInputBuilder
    implements
        Builder<HttpRequestWithRegexLiteralInput,
            HttpRequestWithRegexLiteralInputBuilder> {
  _$HttpRequestWithRegexLiteralInput? _$v;

  String? _str;
  String? get str => _$this._str;
  set str(String? str) => _$this._str = str;

  HttpRequestWithRegexLiteralInputBuilder() {
    HttpRequestWithRegexLiteralInput._init(this);
  }

  HttpRequestWithRegexLiteralInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _str = $v.str;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequestWithRegexLiteralInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithRegexLiteralInput;
  }

  @override
  void update(void Function(HttpRequestWithRegexLiteralInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRequestWithRegexLiteralInput build() => _build();

  _$HttpRequestWithRegexLiteralInput _build() {
    final _$result = _$v ??
        new _$HttpRequestWithRegexLiteralInput._(
            str: BuiltValueNullFieldError.checkNotNull(
                str, r'HttpRequestWithRegexLiteralInput', 'str'));
    replace(_$result);
    return _$result;
  }
}

class _$HttpRequestWithRegexLiteralInputPayload
    extends HttpRequestWithRegexLiteralInputPayload {
  factory _$HttpRequestWithRegexLiteralInputPayload(
          [void Function(HttpRequestWithRegexLiteralInputPayloadBuilder)?
              updates]) =>
      (new HttpRequestWithRegexLiteralInputPayloadBuilder()..update(updates))
          ._build();

  _$HttpRequestWithRegexLiteralInputPayload._() : super._();

  @override
  HttpRequestWithRegexLiteralInputPayload rebuild(
          void Function(HttpRequestWithRegexLiteralInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithRegexLiteralInputPayloadBuilder toBuilder() =>
      new HttpRequestWithRegexLiteralInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithRegexLiteralInputPayload;
  }

  @override
  int get hashCode {
    return 208578194;
  }
}

class HttpRequestWithRegexLiteralInputPayloadBuilder
    implements
        Builder<HttpRequestWithRegexLiteralInputPayload,
            HttpRequestWithRegexLiteralInputPayloadBuilder> {
  _$HttpRequestWithRegexLiteralInputPayload? _$v;

  HttpRequestWithRegexLiteralInputPayloadBuilder() {
    HttpRequestWithRegexLiteralInputPayload._init(this);
  }

  @override
  void replace(HttpRequestWithRegexLiteralInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithRegexLiteralInputPayload;
  }

  @override
  void update(
      void Function(HttpRequestWithRegexLiteralInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRequestWithRegexLiteralInputPayload build() => _build();

  _$HttpRequestWithRegexLiteralInputPayload _build() {
    final _$result = _$v ?? new _$HttpRequestWithRegexLiteralInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
