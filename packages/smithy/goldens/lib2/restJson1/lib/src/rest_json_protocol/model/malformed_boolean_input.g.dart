// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_boolean_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedBooleanInput extends MalformedBooleanInput {
  @override
  final bool? booleanInBody;
  @override
  final bool? booleanInHeader;
  @override
  final bool booleanInPath;
  @override
  final bool? booleanInQuery;

  factory _$MalformedBooleanInput(
          [void Function(MalformedBooleanInputBuilder)? updates]) =>
      (new MalformedBooleanInputBuilder()..update(updates))._build();

  _$MalformedBooleanInput._(
      {this.booleanInBody,
      this.booleanInHeader,
      required this.booleanInPath,
      this.booleanInQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        booleanInPath, r'MalformedBooleanInput', 'booleanInPath');
  }

  @override
  MalformedBooleanInput rebuild(
          void Function(MalformedBooleanInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedBooleanInputBuilder toBuilder() =>
      new MalformedBooleanInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedBooleanInput &&
        booleanInBody == other.booleanInBody &&
        booleanInHeader == other.booleanInHeader &&
        booleanInPath == other.booleanInPath &&
        booleanInQuery == other.booleanInQuery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, booleanInBody.hashCode);
    _$hash = $jc(_$hash, booleanInHeader.hashCode);
    _$hash = $jc(_$hash, booleanInPath.hashCode);
    _$hash = $jc(_$hash, booleanInQuery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedBooleanInputBuilder
    implements Builder<MalformedBooleanInput, MalformedBooleanInputBuilder> {
  _$MalformedBooleanInput? _$v;

  bool? _booleanInBody;
  bool? get booleanInBody => _$this._booleanInBody;
  set booleanInBody(bool? booleanInBody) =>
      _$this._booleanInBody = booleanInBody;

  bool? _booleanInHeader;
  bool? get booleanInHeader => _$this._booleanInHeader;
  set booleanInHeader(bool? booleanInHeader) =>
      _$this._booleanInHeader = booleanInHeader;

  bool? _booleanInPath;
  bool? get booleanInPath => _$this._booleanInPath;
  set booleanInPath(bool? booleanInPath) =>
      _$this._booleanInPath = booleanInPath;

  bool? _booleanInQuery;
  bool? get booleanInQuery => _$this._booleanInQuery;
  set booleanInQuery(bool? booleanInQuery) =>
      _$this._booleanInQuery = booleanInQuery;

  MalformedBooleanInputBuilder() {
    MalformedBooleanInput._init(this);
  }

  MalformedBooleanInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _booleanInBody = $v.booleanInBody;
      _booleanInHeader = $v.booleanInHeader;
      _booleanInPath = $v.booleanInPath;
      _booleanInQuery = $v.booleanInQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedBooleanInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedBooleanInput;
  }

  @override
  void update(void Function(MalformedBooleanInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedBooleanInput build() => _build();

  _$MalformedBooleanInput _build() {
    final _$result = _$v ??
        new _$MalformedBooleanInput._(
            booleanInBody: booleanInBody,
            booleanInHeader: booleanInHeader,
            booleanInPath: BuiltValueNullFieldError.checkNotNull(
                booleanInPath, r'MalformedBooleanInput', 'booleanInPath'),
            booleanInQuery: booleanInQuery);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedBooleanInputPayload extends MalformedBooleanInputPayload {
  @override
  final bool? booleanInBody;

  factory _$MalformedBooleanInputPayload(
          [void Function(MalformedBooleanInputPayloadBuilder)? updates]) =>
      (new MalformedBooleanInputPayloadBuilder()..update(updates))._build();

  _$MalformedBooleanInputPayload._({this.booleanInBody}) : super._();

  @override
  MalformedBooleanInputPayload rebuild(
          void Function(MalformedBooleanInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedBooleanInputPayloadBuilder toBuilder() =>
      new MalformedBooleanInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedBooleanInputPayload &&
        booleanInBody == other.booleanInBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, booleanInBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedBooleanInputPayloadBuilder
    implements
        Builder<MalformedBooleanInputPayload,
            MalformedBooleanInputPayloadBuilder> {
  _$MalformedBooleanInputPayload? _$v;

  bool? _booleanInBody;
  bool? get booleanInBody => _$this._booleanInBody;
  set booleanInBody(bool? booleanInBody) =>
      _$this._booleanInBody = booleanInBody;

  MalformedBooleanInputPayloadBuilder() {
    MalformedBooleanInputPayload._init(this);
  }

  MalformedBooleanInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _booleanInBody = $v.booleanInBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedBooleanInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedBooleanInputPayload;
  }

  @override
  void update(void Function(MalformedBooleanInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedBooleanInputPayload build() => _build();

  _$MalformedBooleanInputPayload _build() {
    final _$result = _$v ??
        new _$MalformedBooleanInputPayload._(booleanInBody: booleanInBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
