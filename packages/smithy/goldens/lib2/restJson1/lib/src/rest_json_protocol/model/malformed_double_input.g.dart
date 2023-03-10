// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_double_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedDoubleInput extends MalformedDoubleInput {
  @override
  final double? doubleInBody;
  @override
  final double? doubleInHeader;
  @override
  final double doubleInPath;
  @override
  final double? doubleInQuery;

  factory _$MalformedDoubleInput(
          [void Function(MalformedDoubleInputBuilder)? updates]) =>
      (new MalformedDoubleInputBuilder()..update(updates))._build();

  _$MalformedDoubleInput._(
      {this.doubleInBody,
      this.doubleInHeader,
      required this.doubleInPath,
      this.doubleInQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        doubleInPath, r'MalformedDoubleInput', 'doubleInPath');
  }

  @override
  MalformedDoubleInput rebuild(
          void Function(MalformedDoubleInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedDoubleInputBuilder toBuilder() =>
      new MalformedDoubleInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedDoubleInput &&
        doubleInBody == other.doubleInBody &&
        doubleInHeader == other.doubleInHeader &&
        doubleInPath == other.doubleInPath &&
        doubleInQuery == other.doubleInQuery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, doubleInBody.hashCode);
    _$hash = $jc(_$hash, doubleInHeader.hashCode);
    _$hash = $jc(_$hash, doubleInPath.hashCode);
    _$hash = $jc(_$hash, doubleInQuery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedDoubleInputBuilder
    implements Builder<MalformedDoubleInput, MalformedDoubleInputBuilder> {
  _$MalformedDoubleInput? _$v;

  double? _doubleInBody;
  double? get doubleInBody => _$this._doubleInBody;
  set doubleInBody(double? doubleInBody) => _$this._doubleInBody = doubleInBody;

  double? _doubleInHeader;
  double? get doubleInHeader => _$this._doubleInHeader;
  set doubleInHeader(double? doubleInHeader) =>
      _$this._doubleInHeader = doubleInHeader;

  double? _doubleInPath;
  double? get doubleInPath => _$this._doubleInPath;
  set doubleInPath(double? doubleInPath) => _$this._doubleInPath = doubleInPath;

  double? _doubleInQuery;
  double? get doubleInQuery => _$this._doubleInQuery;
  set doubleInQuery(double? doubleInQuery) =>
      _$this._doubleInQuery = doubleInQuery;

  MalformedDoubleInputBuilder() {
    MalformedDoubleInput._init(this);
  }

  MalformedDoubleInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doubleInBody = $v.doubleInBody;
      _doubleInHeader = $v.doubleInHeader;
      _doubleInPath = $v.doubleInPath;
      _doubleInQuery = $v.doubleInQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedDoubleInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedDoubleInput;
  }

  @override
  void update(void Function(MalformedDoubleInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedDoubleInput build() => _build();

  _$MalformedDoubleInput _build() {
    final _$result = _$v ??
        new _$MalformedDoubleInput._(
            doubleInBody: doubleInBody,
            doubleInHeader: doubleInHeader,
            doubleInPath: BuiltValueNullFieldError.checkNotNull(
                doubleInPath, r'MalformedDoubleInput', 'doubleInPath'),
            doubleInQuery: doubleInQuery);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedDoubleInputPayload extends MalformedDoubleInputPayload {
  @override
  final double? doubleInBody;

  factory _$MalformedDoubleInputPayload(
          [void Function(MalformedDoubleInputPayloadBuilder)? updates]) =>
      (new MalformedDoubleInputPayloadBuilder()..update(updates))._build();

  _$MalformedDoubleInputPayload._({this.doubleInBody}) : super._();

  @override
  MalformedDoubleInputPayload rebuild(
          void Function(MalformedDoubleInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedDoubleInputPayloadBuilder toBuilder() =>
      new MalformedDoubleInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedDoubleInputPayload &&
        doubleInBody == other.doubleInBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, doubleInBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedDoubleInputPayloadBuilder
    implements
        Builder<MalformedDoubleInputPayload,
            MalformedDoubleInputPayloadBuilder> {
  _$MalformedDoubleInputPayload? _$v;

  double? _doubleInBody;
  double? get doubleInBody => _$this._doubleInBody;
  set doubleInBody(double? doubleInBody) => _$this._doubleInBody = doubleInBody;

  MalformedDoubleInputPayloadBuilder() {
    MalformedDoubleInputPayload._init(this);
  }

  MalformedDoubleInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doubleInBody = $v.doubleInBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedDoubleInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedDoubleInputPayload;
  }

  @override
  void update(void Function(MalformedDoubleInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedDoubleInputPayload build() => _build();

  _$MalformedDoubleInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedDoubleInputPayload._(doubleInBody: doubleInBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
