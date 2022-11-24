// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_integer_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedIntegerInput extends MalformedIntegerInput {
  @override
  final int? integerInBody;
  @override
  final int? integerInHeader;
  @override
  final int integerInPath;
  @override
  final int? integerInQuery;

  factory _$MalformedIntegerInput(
          [void Function(MalformedIntegerInputBuilder)? updates]) =>
      (new MalformedIntegerInputBuilder()..update(updates))._build();

  _$MalformedIntegerInput._(
      {this.integerInBody,
      this.integerInHeader,
      required this.integerInPath,
      this.integerInQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        integerInPath, r'MalformedIntegerInput', 'integerInPath');
  }

  @override
  MalformedIntegerInput rebuild(
          void Function(MalformedIntegerInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedIntegerInputBuilder toBuilder() =>
      new MalformedIntegerInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedIntegerInput &&
        integerInBody == other.integerInBody &&
        integerInHeader == other.integerInHeader &&
        integerInPath == other.integerInPath &&
        integerInQuery == other.integerInQuery;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, integerInBody.hashCode), integerInHeader.hashCode),
            integerInPath.hashCode),
        integerInQuery.hashCode));
  }
}

class MalformedIntegerInputBuilder
    implements Builder<MalformedIntegerInput, MalformedIntegerInputBuilder> {
  _$MalformedIntegerInput? _$v;

  int? _integerInBody;
  int? get integerInBody => _$this._integerInBody;
  set integerInBody(int? integerInBody) =>
      _$this._integerInBody = integerInBody;

  int? _integerInHeader;
  int? get integerInHeader => _$this._integerInHeader;
  set integerInHeader(int? integerInHeader) =>
      _$this._integerInHeader = integerInHeader;

  int? _integerInPath;
  int? get integerInPath => _$this._integerInPath;
  set integerInPath(int? integerInPath) =>
      _$this._integerInPath = integerInPath;

  int? _integerInQuery;
  int? get integerInQuery => _$this._integerInQuery;
  set integerInQuery(int? integerInQuery) =>
      _$this._integerInQuery = integerInQuery;

  MalformedIntegerInputBuilder() {
    MalformedIntegerInput._init(this);
  }

  MalformedIntegerInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _integerInBody = $v.integerInBody;
      _integerInHeader = $v.integerInHeader;
      _integerInPath = $v.integerInPath;
      _integerInQuery = $v.integerInQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedIntegerInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedIntegerInput;
  }

  @override
  void update(void Function(MalformedIntegerInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedIntegerInput build() => _build();

  _$MalformedIntegerInput _build() {
    final _$result = _$v ??
        new _$MalformedIntegerInput._(
            integerInBody: integerInBody,
            integerInHeader: integerInHeader,
            integerInPath: BuiltValueNullFieldError.checkNotNull(
                integerInPath, r'MalformedIntegerInput', 'integerInPath'),
            integerInQuery: integerInQuery);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedIntegerInputPayload extends MalformedIntegerInputPayload {
  @override
  final int? integerInBody;

  factory _$MalformedIntegerInputPayload(
          [void Function(MalformedIntegerInputPayloadBuilder)? updates]) =>
      (new MalformedIntegerInputPayloadBuilder()..update(updates))._build();

  _$MalformedIntegerInputPayload._({this.integerInBody}) : super._();

  @override
  MalformedIntegerInputPayload rebuild(
          void Function(MalformedIntegerInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedIntegerInputPayloadBuilder toBuilder() =>
      new MalformedIntegerInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedIntegerInputPayload &&
        integerInBody == other.integerInBody;
  }

  @override
  int get hashCode {
    return $jf($jc(0, integerInBody.hashCode));
  }
}

class MalformedIntegerInputPayloadBuilder
    implements
        Builder<MalformedIntegerInputPayload,
            MalformedIntegerInputPayloadBuilder> {
  _$MalformedIntegerInputPayload? _$v;

  int? _integerInBody;
  int? get integerInBody => _$this._integerInBody;
  set integerInBody(int? integerInBody) =>
      _$this._integerInBody = integerInBody;

  MalformedIntegerInputPayloadBuilder() {
    MalformedIntegerInputPayload._init(this);
  }

  MalformedIntegerInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _integerInBody = $v.integerInBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedIntegerInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedIntegerInputPayload;
  }

  @override
  void update(void Function(MalformedIntegerInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedIntegerInputPayload build() => _build();

  _$MalformedIntegerInputPayload _build() {
    final _$result = _$v ??
        new _$MalformedIntegerInputPayload._(integerInBody: integerInBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
