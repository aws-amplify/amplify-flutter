// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.response_code_required_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponseCodeRequiredOutput extends ResponseCodeRequiredOutput {
  @override
  final int responseCode;

  factory _$ResponseCodeRequiredOutput(
          [void Function(ResponseCodeRequiredOutputBuilder)? updates]) =>
      (new ResponseCodeRequiredOutputBuilder()..update(updates))._build();

  _$ResponseCodeRequiredOutput._({required this.responseCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        responseCode, r'ResponseCodeRequiredOutput', 'responseCode');
  }

  @override
  ResponseCodeRequiredOutput rebuild(
          void Function(ResponseCodeRequiredOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseCodeRequiredOutputBuilder toBuilder() =>
      new ResponseCodeRequiredOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseCodeRequiredOutput &&
        responseCode == other.responseCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResponseCodeRequiredOutputBuilder
    implements
        Builder<ResponseCodeRequiredOutput, ResponseCodeRequiredOutputBuilder> {
  _$ResponseCodeRequiredOutput? _$v;

  int? _responseCode;
  int? get responseCode => _$this._responseCode;
  set responseCode(int? responseCode) => _$this._responseCode = responseCode;

  ResponseCodeRequiredOutputBuilder() {
    ResponseCodeRequiredOutput._init(this);
  }

  ResponseCodeRequiredOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseCode = $v.responseCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseCodeRequiredOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseCodeRequiredOutput;
  }

  @override
  void update(void Function(ResponseCodeRequiredOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseCodeRequiredOutput build() => _build();

  _$ResponseCodeRequiredOutput _build() {
    final _$result = _$v ??
        new _$ResponseCodeRequiredOutput._(
            responseCode: BuiltValueNullFieldError.checkNotNull(
                responseCode, r'ResponseCodeRequiredOutput', 'responseCode'));
    replace(_$result);
    return _$result;
  }
}

class _$ResponseCodeRequiredOutputPayload
    extends ResponseCodeRequiredOutputPayload {
  factory _$ResponseCodeRequiredOutputPayload(
          [void Function(ResponseCodeRequiredOutputPayloadBuilder)? updates]) =>
      (new ResponseCodeRequiredOutputPayloadBuilder()..update(updates))
          ._build();

  _$ResponseCodeRequiredOutputPayload._() : super._();

  @override
  ResponseCodeRequiredOutputPayload rebuild(
          void Function(ResponseCodeRequiredOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseCodeRequiredOutputPayloadBuilder toBuilder() =>
      new ResponseCodeRequiredOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseCodeRequiredOutputPayload;
  }

  @override
  int get hashCode {
    return 261432842;
  }
}

class ResponseCodeRequiredOutputPayloadBuilder
    implements
        Builder<ResponseCodeRequiredOutputPayload,
            ResponseCodeRequiredOutputPayloadBuilder> {
  _$ResponseCodeRequiredOutputPayload? _$v;

  ResponseCodeRequiredOutputPayloadBuilder() {
    ResponseCodeRequiredOutputPayload._init(this);
  }

  @override
  void replace(ResponseCodeRequiredOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseCodeRequiredOutputPayload;
  }

  @override
  void update(
      void Function(ResponseCodeRequiredOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseCodeRequiredOutputPayload build() => _build();

  _$ResponseCodeRequiredOutputPayload _build() {
    final _$result = _$v ?? new _$ResponseCodeRequiredOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
