// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_float_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedFloatInput extends MalformedFloatInput {
  @override
  final double? floatInBody;
  @override
  final double? floatInHeader;
  @override
  final double floatInPath;
  @override
  final double? floatInQuery;

  factory _$MalformedFloatInput(
          [void Function(MalformedFloatInputBuilder)? updates]) =>
      (new MalformedFloatInputBuilder()..update(updates))._build();

  _$MalformedFloatInput._(
      {this.floatInBody,
      this.floatInHeader,
      required this.floatInPath,
      this.floatInQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        floatInPath, r'MalformedFloatInput', 'floatInPath');
  }

  @override
  MalformedFloatInput rebuild(
          void Function(MalformedFloatInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedFloatInputBuilder toBuilder() =>
      new MalformedFloatInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedFloatInput &&
        floatInBody == other.floatInBody &&
        floatInHeader == other.floatInHeader &&
        floatInPath == other.floatInPath &&
        floatInQuery == other.floatInQuery;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, floatInBody.hashCode), floatInHeader.hashCode),
            floatInPath.hashCode),
        floatInQuery.hashCode));
  }
}

class MalformedFloatInputBuilder
    implements Builder<MalformedFloatInput, MalformedFloatInputBuilder> {
  _$MalformedFloatInput? _$v;

  double? _floatInBody;
  double? get floatInBody => _$this._floatInBody;
  set floatInBody(double? floatInBody) => _$this._floatInBody = floatInBody;

  double? _floatInHeader;
  double? get floatInHeader => _$this._floatInHeader;
  set floatInHeader(double? floatInHeader) =>
      _$this._floatInHeader = floatInHeader;

  double? _floatInPath;
  double? get floatInPath => _$this._floatInPath;
  set floatInPath(double? floatInPath) => _$this._floatInPath = floatInPath;

  double? _floatInQuery;
  double? get floatInQuery => _$this._floatInQuery;
  set floatInQuery(double? floatInQuery) => _$this._floatInQuery = floatInQuery;

  MalformedFloatInputBuilder() {
    MalformedFloatInput._init(this);
  }

  MalformedFloatInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _floatInBody = $v.floatInBody;
      _floatInHeader = $v.floatInHeader;
      _floatInPath = $v.floatInPath;
      _floatInQuery = $v.floatInQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedFloatInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedFloatInput;
  }

  @override
  void update(void Function(MalformedFloatInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedFloatInput build() => _build();

  _$MalformedFloatInput _build() {
    final _$result = _$v ??
        new _$MalformedFloatInput._(
            floatInBody: floatInBody,
            floatInHeader: floatInHeader,
            floatInPath: BuiltValueNullFieldError.checkNotNull(
                floatInPath, r'MalformedFloatInput', 'floatInPath'),
            floatInQuery: floatInQuery);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedFloatInputPayload extends MalformedFloatInputPayload {
  @override
  final double? floatInBody;

  factory _$MalformedFloatInputPayload(
          [void Function(MalformedFloatInputPayloadBuilder)? updates]) =>
      (new MalformedFloatInputPayloadBuilder()..update(updates))._build();

  _$MalformedFloatInputPayload._({this.floatInBody}) : super._();

  @override
  MalformedFloatInputPayload rebuild(
          void Function(MalformedFloatInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedFloatInputPayloadBuilder toBuilder() =>
      new MalformedFloatInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedFloatInputPayload &&
        floatInBody == other.floatInBody;
  }

  @override
  int get hashCode {
    return $jf($jc(0, floatInBody.hashCode));
  }
}

class MalformedFloatInputPayloadBuilder
    implements
        Builder<MalformedFloatInputPayload, MalformedFloatInputPayloadBuilder> {
  _$MalformedFloatInputPayload? _$v;

  double? _floatInBody;
  double? get floatInBody => _$this._floatInBody;
  set floatInBody(double? floatInBody) => _$this._floatInBody = floatInBody;

  MalformedFloatInputPayloadBuilder() {
    MalformedFloatInputPayload._init(this);
  }

  MalformedFloatInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _floatInBody = $v.floatInBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedFloatInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedFloatInputPayload;
  }

  @override
  void update(void Function(MalformedFloatInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedFloatInputPayload build() => _build();

  _$MalformedFloatInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedFloatInputPayload._(floatInBody: floatInBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
