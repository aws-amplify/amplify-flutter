// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.http_prefix_headers_in_response_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPrefixHeadersInResponseOutput
    extends HttpPrefixHeadersInResponseOutput {
  @override
  final _i3.BuiltMap<String, String>? prefixHeaders;

  factory _$HttpPrefixHeadersInResponseOutput(
          [void Function(HttpPrefixHeadersInResponseOutputBuilder)? updates]) =>
      (new HttpPrefixHeadersInResponseOutputBuilder()..update(updates))
          ._build();

  _$HttpPrefixHeadersInResponseOutput._({this.prefixHeaders}) : super._();

  @override
  HttpPrefixHeadersInResponseOutput rebuild(
          void Function(HttpPrefixHeadersInResponseOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInResponseOutputBuilder toBuilder() =>
      new HttpPrefixHeadersInResponseOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInResponseOutput &&
        prefixHeaders == other.prefixHeaders;
  }

  @override
  int get hashCode {
    return $jf($jc(0, prefixHeaders.hashCode));
  }
}

class HttpPrefixHeadersInResponseOutputBuilder
    implements
        Builder<HttpPrefixHeadersInResponseOutput,
            HttpPrefixHeadersInResponseOutputBuilder> {
  _$HttpPrefixHeadersInResponseOutput? _$v;

  _i3.MapBuilder<String, String>? _prefixHeaders;
  _i3.MapBuilder<String, String> get prefixHeaders =>
      _$this._prefixHeaders ??= new _i3.MapBuilder<String, String>();
  set prefixHeaders(_i3.MapBuilder<String, String>? prefixHeaders) =>
      _$this._prefixHeaders = prefixHeaders;

  HttpPrefixHeadersInResponseOutputBuilder() {
    HttpPrefixHeadersInResponseOutput._init(this);
  }

  HttpPrefixHeadersInResponseOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefixHeaders = $v.prefixHeaders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPrefixHeadersInResponseOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersInResponseOutput;
  }

  @override
  void update(
      void Function(HttpPrefixHeadersInResponseOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInResponseOutput build() => _build();

  _$HttpPrefixHeadersInResponseOutput _build() {
    _$HttpPrefixHeadersInResponseOutput _$result;
    try {
      _$result = _$v ??
          new _$HttpPrefixHeadersInResponseOutput._(
              prefixHeaders: _prefixHeaders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixHeaders';
        _prefixHeaders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpPrefixHeadersInResponseOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpPrefixHeadersInResponseOutputPayload
    extends HttpPrefixHeadersInResponseOutputPayload {
  factory _$HttpPrefixHeadersInResponseOutputPayload(
          [void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder)?
              updates]) =>
      (new HttpPrefixHeadersInResponseOutputPayloadBuilder()..update(updates))
          ._build();

  _$HttpPrefixHeadersInResponseOutputPayload._() : super._();

  @override
  HttpPrefixHeadersInResponseOutputPayload rebuild(
          void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInResponseOutputPayloadBuilder toBuilder() =>
      new HttpPrefixHeadersInResponseOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInResponseOutputPayload;
  }

  @override
  int get hashCode {
    return 1070444313;
  }
}

class HttpPrefixHeadersInResponseOutputPayloadBuilder
    implements
        Builder<HttpPrefixHeadersInResponseOutputPayload,
            HttpPrefixHeadersInResponseOutputPayloadBuilder> {
  _$HttpPrefixHeadersInResponseOutputPayload? _$v;

  HttpPrefixHeadersInResponseOutputPayloadBuilder() {
    HttpPrefixHeadersInResponseOutputPayload._init(this);
  }

  @override
  void replace(HttpPrefixHeadersInResponseOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersInResponseOutputPayload;
  }

  @override
  void update(
      void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInResponseOutputPayload build() => _build();

  _$HttpPrefixHeadersInResponseOutputPayload _build() {
    final _$result = _$v ?? new _$HttpPrefixHeadersInResponseOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
