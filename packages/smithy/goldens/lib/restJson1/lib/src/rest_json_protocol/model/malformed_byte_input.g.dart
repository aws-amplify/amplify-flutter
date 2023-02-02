// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_byte_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedByteInput extends MalformedByteInput {
  @override
  final int? byteInBody;
  @override
  final int? byteInHeader;
  @override
  final int byteInPath;
  @override
  final int? byteInQuery;

  factory _$MalformedByteInput(
          [void Function(MalformedByteInputBuilder)? updates]) =>
      (new MalformedByteInputBuilder()..update(updates))._build();

  _$MalformedByteInput._(
      {this.byteInBody,
      this.byteInHeader,
      required this.byteInPath,
      this.byteInQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        byteInPath, r'MalformedByteInput', 'byteInPath');
  }

  @override
  MalformedByteInput rebuild(
          void Function(MalformedByteInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedByteInputBuilder toBuilder() =>
      new MalformedByteInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedByteInput &&
        byteInBody == other.byteInBody &&
        byteInHeader == other.byteInHeader &&
        byteInPath == other.byteInPath &&
        byteInQuery == other.byteInQuery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byteInBody.hashCode);
    _$hash = $jc(_$hash, byteInHeader.hashCode);
    _$hash = $jc(_$hash, byteInPath.hashCode);
    _$hash = $jc(_$hash, byteInQuery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedByteInputBuilder
    implements Builder<MalformedByteInput, MalformedByteInputBuilder> {
  _$MalformedByteInput? _$v;

  int? _byteInBody;
  int? get byteInBody => _$this._byteInBody;
  set byteInBody(int? byteInBody) => _$this._byteInBody = byteInBody;

  int? _byteInHeader;
  int? get byteInHeader => _$this._byteInHeader;
  set byteInHeader(int? byteInHeader) => _$this._byteInHeader = byteInHeader;

  int? _byteInPath;
  int? get byteInPath => _$this._byteInPath;
  set byteInPath(int? byteInPath) => _$this._byteInPath = byteInPath;

  int? _byteInQuery;
  int? get byteInQuery => _$this._byteInQuery;
  set byteInQuery(int? byteInQuery) => _$this._byteInQuery = byteInQuery;

  MalformedByteInputBuilder() {
    MalformedByteInput._init(this);
  }

  MalformedByteInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byteInBody = $v.byteInBody;
      _byteInHeader = $v.byteInHeader;
      _byteInPath = $v.byteInPath;
      _byteInQuery = $v.byteInQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedByteInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedByteInput;
  }

  @override
  void update(void Function(MalformedByteInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedByteInput build() => _build();

  _$MalformedByteInput _build() {
    final _$result = _$v ??
        new _$MalformedByteInput._(
            byteInBody: byteInBody,
            byteInHeader: byteInHeader,
            byteInPath: BuiltValueNullFieldError.checkNotNull(
                byteInPath, r'MalformedByteInput', 'byteInPath'),
            byteInQuery: byteInQuery);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedByteInputPayload extends MalformedByteInputPayload {
  @override
  final int? byteInBody;

  factory _$MalformedByteInputPayload(
          [void Function(MalformedByteInputPayloadBuilder)? updates]) =>
      (new MalformedByteInputPayloadBuilder()..update(updates))._build();

  _$MalformedByteInputPayload._({this.byteInBody}) : super._();

  @override
  MalformedByteInputPayload rebuild(
          void Function(MalformedByteInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedByteInputPayloadBuilder toBuilder() =>
      new MalformedByteInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedByteInputPayload && byteInBody == other.byteInBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byteInBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedByteInputPayloadBuilder
    implements
        Builder<MalformedByteInputPayload, MalformedByteInputPayloadBuilder> {
  _$MalformedByteInputPayload? _$v;

  int? _byteInBody;
  int? get byteInBody => _$this._byteInBody;
  set byteInBody(int? byteInBody) => _$this._byteInBody = byteInBody;

  MalformedByteInputPayloadBuilder() {
    MalformedByteInputPayload._init(this);
  }

  MalformedByteInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byteInBody = $v.byteInBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedByteInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedByteInputPayload;
  }

  @override
  void update(void Function(MalformedByteInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedByteInputPayload build() => _build();

  _$MalformedByteInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedByteInputPayload._(byteInBody: byteInBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
