// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.http_prefix_headers_in_response_input;

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
