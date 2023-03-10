// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.http_prefix_headers_in_response_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPrefixHeadersInResponseInput
    extends HttpPrefixHeadersInResponseInput {
  factory _$HttpPrefixHeadersInResponseInput(
          [void Function(HttpPrefixHeadersInResponseInputBuilder)? updates]) =>
      (new HttpPrefixHeadersInResponseInputBuilder()..update(updates))._build();

  _$HttpPrefixHeadersInResponseInput._() : super._();

  @override
  HttpPrefixHeadersInResponseInput rebuild(
          void Function(HttpPrefixHeadersInResponseInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInResponseInputBuilder toBuilder() =>
      new HttpPrefixHeadersInResponseInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInResponseInput;
  }

  @override
  int get hashCode {
    return 890165507;
  }
}

class HttpPrefixHeadersInResponseInputBuilder
    implements
        Builder<HttpPrefixHeadersInResponseInput,
            HttpPrefixHeadersInResponseInputBuilder> {
  _$HttpPrefixHeadersInResponseInput? _$v;

  HttpPrefixHeadersInResponseInputBuilder() {
    HttpPrefixHeadersInResponseInput._init(this);
  }

  @override
  void replace(HttpPrefixHeadersInResponseInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersInResponseInput;
  }

  @override
  void update(void Function(HttpPrefixHeadersInResponseInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInResponseInput build() => _build();

  _$HttpPrefixHeadersInResponseInput _build() {
    final _$result = _$v ?? new _$HttpPrefixHeadersInResponseInput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
