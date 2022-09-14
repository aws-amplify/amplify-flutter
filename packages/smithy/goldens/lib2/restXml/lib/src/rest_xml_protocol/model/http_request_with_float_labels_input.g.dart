// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.http_request_with_float_labels_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequestWithFloatLabelsInput
    extends HttpRequestWithFloatLabelsInput {
  @override
  final double double_;
  @override
  final double float;

  factory _$HttpRequestWithFloatLabelsInput(
          [void Function(HttpRequestWithFloatLabelsInputBuilder)? updates]) =>
      (new HttpRequestWithFloatLabelsInputBuilder()..update(updates))._build();

  _$HttpRequestWithFloatLabelsInput._(
      {required this.double_, required this.float})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        double_, r'HttpRequestWithFloatLabelsInput', 'double_');
    BuiltValueNullFieldError.checkNotNull(
        float, r'HttpRequestWithFloatLabelsInput', 'float');
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
        double_ == other.double_ &&
        float == other.float;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, double_.hashCode), float.hashCode));
  }
}

class HttpRequestWithFloatLabelsInputBuilder
    implements
        Builder<HttpRequestWithFloatLabelsInput,
            HttpRequestWithFloatLabelsInputBuilder> {
  _$HttpRequestWithFloatLabelsInput? _$v;

  double? _double_;
  double? get double_ => _$this._double_;
  set double_(double? double_) => _$this._double_ = double_;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  HttpRequestWithFloatLabelsInputBuilder() {
    HttpRequestWithFloatLabelsInput._init(this);
  }

  HttpRequestWithFloatLabelsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _double_ = $v.double_;
      _float = $v.float;
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
            double_: BuiltValueNullFieldError.checkNotNull(
                double_, r'HttpRequestWithFloatLabelsInput', 'double_'),
            float: BuiltValueNullFieldError.checkNotNull(
                float, r'HttpRequestWithFloatLabelsInput', 'float'));
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

  HttpRequestWithFloatLabelsInputPayloadBuilder() {
    HttpRequestWithFloatLabelsInputPayload._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
