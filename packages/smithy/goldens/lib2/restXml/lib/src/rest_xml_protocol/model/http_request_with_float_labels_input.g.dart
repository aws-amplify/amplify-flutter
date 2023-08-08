// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_request_with_float_labels_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequestWithFloatLabelsInput
    extends HttpRequestWithFloatLabelsInput {
  @override
  final double float;
  @override
  final double double_;

  factory _$HttpRequestWithFloatLabelsInput(
          [void Function(HttpRequestWithFloatLabelsInputBuilder)? updates]) =>
      (new HttpRequestWithFloatLabelsInputBuilder()..update(updates))._build();

  _$HttpRequestWithFloatLabelsInput._(
      {required this.float, required this.double_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        float, r'HttpRequestWithFloatLabelsInput', 'float');
    BuiltValueNullFieldError.checkNotNull(
        double_, r'HttpRequestWithFloatLabelsInput', 'double_');
  }

  @override
  HttpRequestWithFloatLabelsInput rebuild(
          void Function(HttpRequestWithFloatLabelsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithFloatLabelsInputBuilder toBuilder() =>
      new HttpRequestWithFloatLabelsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithFloatLabelsInput &&
        float == other.float &&
        double_ == other.double_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, float.hashCode);
    _$hash = $jc(_$hash, double_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpRequestWithFloatLabelsInputBuilder
    implements
        Builder<HttpRequestWithFloatLabelsInput,
            HttpRequestWithFloatLabelsInputBuilder> {
  _$HttpRequestWithFloatLabelsInput? _$v;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  double? _double_;
  double? get double_ => _$this._double_;
  set double_(double? double_) => _$this._double_ = double_;

  HttpRequestWithFloatLabelsInputBuilder();

  HttpRequestWithFloatLabelsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _float = $v.float;
      _double_ = $v.double_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequestWithFloatLabelsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithFloatLabelsInput;
  }

  @override
  void update(void Function(HttpRequestWithFloatLabelsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRequestWithFloatLabelsInput build() => _build();

  _$HttpRequestWithFloatLabelsInput _build() {
    final _$result = _$v ??
        new _$HttpRequestWithFloatLabelsInput._(
            float: BuiltValueNullFieldError.checkNotNull(
                float, r'HttpRequestWithFloatLabelsInput', 'float'),
            double_: BuiltValueNullFieldError.checkNotNull(
                double_, r'HttpRequestWithFloatLabelsInput', 'double_'));
    replace(_$result);
    return _$result;
  }
}

class _$HttpRequestWithFloatLabelsInputPayload
    extends HttpRequestWithFloatLabelsInputPayload {
  factory _$HttpRequestWithFloatLabelsInputPayload(
          [void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)?
              updates]) =>
      (new HttpRequestWithFloatLabelsInputPayloadBuilder()..update(updates))
          ._build();

  _$HttpRequestWithFloatLabelsInputPayload._() : super._();

  @override
  HttpRequestWithFloatLabelsInputPayload rebuild(
          void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithFloatLabelsInputPayloadBuilder toBuilder() =>
      new HttpRequestWithFloatLabelsInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithFloatLabelsInputPayload;
  }

  @override
  int get hashCode {
    return 113596152;
  }
}

class HttpRequestWithFloatLabelsInputPayloadBuilder
    implements
        Builder<HttpRequestWithFloatLabelsInputPayload,
            HttpRequestWithFloatLabelsInputPayloadBuilder> {
  _$HttpRequestWithFloatLabelsInputPayload? _$v;

  HttpRequestWithFloatLabelsInputPayloadBuilder();

  @override
  void replace(HttpRequestWithFloatLabelsInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithFloatLabelsInputPayload;
  }

  @override
  void update(
      void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRequestWithFloatLabelsInputPayload build() => _build();

  _$HttpRequestWithFloatLabelsInputPayload _build() {
    final _$result = _$v ?? new _$HttpRequestWithFloatLabelsInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
