// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.http_request_with_regex_literal_input;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, str.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
