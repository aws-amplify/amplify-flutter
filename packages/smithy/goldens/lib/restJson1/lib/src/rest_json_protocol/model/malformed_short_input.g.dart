// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.malformed_short_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedShortInput extends MalformedShortInput {
  @override
  final int? shortInBody;
  @override
  final int? shortInHeader;
  @override
  final int shortInPath;
  @override
  final int? shortInQuery;

  factory _$MalformedShortInput(
          [void Function(MalformedShortInputBuilder)? updates]) =>
      (new MalformedShortInputBuilder()..update(updates))._build();

  _$MalformedShortInput._(
      {this.shortInBody,
      this.shortInHeader,
      required this.shortInPath,
      this.shortInQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shortInPath, r'MalformedShortInput', 'shortInPath');
  }

  @override
  MalformedShortInput rebuild(
          void Function(MalformedShortInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedShortInputBuilder toBuilder() =>
      new MalformedShortInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedShortInput &&
        shortInBody == other.shortInBody &&
        shortInHeader == other.shortInHeader &&
        shortInPath == other.shortInPath &&
        shortInQuery == other.shortInQuery;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, shortInBody.hashCode), shortInHeader.hashCode),
            shortInPath.hashCode),
        shortInQuery.hashCode));
  }
}

class MalformedShortInputBuilder
    implements Builder<MalformedShortInput, MalformedShortInputBuilder> {
  _$MalformedShortInput? _$v;

  int? _shortInBody;
  int? get shortInBody => _$this._shortInBody;
  set shortInBody(int? shortInBody) => _$this._shortInBody = shortInBody;

  int? _shortInHeader;
  int? get shortInHeader => _$this._shortInHeader;
  set shortInHeader(int? shortInHeader) =>
      _$this._shortInHeader = shortInHeader;

  int? _shortInPath;
  int? get shortInPath => _$this._shortInPath;
  set shortInPath(int? shortInPath) => _$this._shortInPath = shortInPath;

  int? _shortInQuery;
  int? get shortInQuery => _$this._shortInQuery;
  set shortInQuery(int? shortInQuery) => _$this._shortInQuery = shortInQuery;

  MalformedShortInputBuilder() {
    MalformedShortInput._init(this);
  }

  MalformedShortInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shortInBody = $v.shortInBody;
      _shortInHeader = $v.shortInHeader;
      _shortInPath = $v.shortInPath;
      _shortInQuery = $v.shortInQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedShortInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedShortInput;
  }

  @override
  void update(void Function(MalformedShortInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedShortInput build() => _build();

  _$MalformedShortInput _build() {
    final _$result = _$v ??
        new _$MalformedShortInput._(
            shortInBody: shortInBody,
            shortInHeader: shortInHeader,
            shortInPath: BuiltValueNullFieldError.checkNotNull(
                shortInPath, r'MalformedShortInput', 'shortInPath'),
            shortInQuery: shortInQuery);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedShortInputPayload extends MalformedShortInputPayload {
  @override
  final int? shortInBody;

  factory _$MalformedShortInputPayload(
          [void Function(MalformedShortInputPayloadBuilder)? updates]) =>
      (new MalformedShortInputPayloadBuilder()..update(updates))._build();

  _$MalformedShortInputPayload._({this.shortInBody}) : super._();

  @override
  MalformedShortInputPayload rebuild(
          void Function(MalformedShortInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedShortInputPayloadBuilder toBuilder() =>
      new MalformedShortInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedShortInputPayload &&
        shortInBody == other.shortInBody;
  }

  @override
  int get hashCode {
    return $jf($jc(0, shortInBody.hashCode));
  }
}

class MalformedShortInputPayloadBuilder
    implements
        Builder<MalformedShortInputPayload, MalformedShortInputPayloadBuilder> {
  _$MalformedShortInputPayload? _$v;

  int? _shortInBody;
  int? get shortInBody => _$this._shortInBody;
  set shortInBody(int? shortInBody) => _$this._shortInBody = shortInBody;

  MalformedShortInputPayloadBuilder() {
    MalformedShortInputPayload._init(this);
  }

  MalformedShortInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shortInBody = $v.shortInBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedShortInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedShortInputPayload;
  }

  @override
  void update(void Function(MalformedShortInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedShortInputPayload build() => _build();

  _$MalformedShortInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedShortInputPayload._(shortInBody: shortInBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
