// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.response_code_http_fallback_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponseCodeHttpFallbackInputOutput
    extends ResponseCodeHttpFallbackInputOutput {
  factory _$ResponseCodeHttpFallbackInputOutput(
          [void Function(ResponseCodeHttpFallbackInputOutputBuilder)?
              updates]) =>
      (new ResponseCodeHttpFallbackInputOutputBuilder()..update(updates))
          ._build();

  _$ResponseCodeHttpFallbackInputOutput._() : super._();

  @override
  ResponseCodeHttpFallbackInputOutput rebuild(
          void Function(ResponseCodeHttpFallbackInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseCodeHttpFallbackInputOutputBuilder toBuilder() =>
      new ResponseCodeHttpFallbackInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseCodeHttpFallbackInputOutput;
  }

  @override
  int get hashCode {
    return 145459382;
  }
}

class ResponseCodeHttpFallbackInputOutputBuilder
    implements
        Builder<ResponseCodeHttpFallbackInputOutput,
            ResponseCodeHttpFallbackInputOutputBuilder> {
  _$ResponseCodeHttpFallbackInputOutput? _$v;

  ResponseCodeHttpFallbackInputOutputBuilder() {
    ResponseCodeHttpFallbackInputOutput._init(this);
  }

  @override
  void replace(ResponseCodeHttpFallbackInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseCodeHttpFallbackInputOutput;
  }

  @override
  void update(
      void Function(ResponseCodeHttpFallbackInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseCodeHttpFallbackInputOutput build() => _build();

  _$ResponseCodeHttpFallbackInputOutput _build() {
    final _$result = _$v ?? new _$ResponseCodeHttpFallbackInputOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
