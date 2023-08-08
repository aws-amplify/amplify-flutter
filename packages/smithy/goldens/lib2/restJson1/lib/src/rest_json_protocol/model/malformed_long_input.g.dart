// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_long_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedLongInput extends MalformedLongInput {
  @override
  final _i3.Int64? longInBody;
  @override
  final _i3.Int64 longInPath;
  @override
  final _i3.Int64? longInQuery;
  @override
  final _i3.Int64? longInHeader;

  factory _$MalformedLongInput(
          [void Function(MalformedLongInputBuilder)? updates]) =>
      (new MalformedLongInputBuilder()..update(updates))._build();

  _$MalformedLongInput._(
      {this.longInBody,
      required this.longInPath,
      this.longInQuery,
      this.longInHeader})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        longInPath, r'MalformedLongInput', 'longInPath');
  }

  @override
  MalformedLongInput rebuild(
          void Function(MalformedLongInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedLongInputBuilder toBuilder() =>
      new MalformedLongInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedLongInput &&
        longInBody == other.longInBody &&
        longInPath == other.longInPath &&
        longInQuery == other.longInQuery &&
        longInHeader == other.longInHeader;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, longInBody.hashCode);
    _$hash = $jc(_$hash, longInPath.hashCode);
    _$hash = $jc(_$hash, longInQuery.hashCode);
    _$hash = $jc(_$hash, longInHeader.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedLongInputBuilder
    implements Builder<MalformedLongInput, MalformedLongInputBuilder> {
  _$MalformedLongInput? _$v;

  _i3.Int64? _longInBody;
  _i3.Int64? get longInBody => _$this._longInBody;
  set longInBody(_i3.Int64? longInBody) => _$this._longInBody = longInBody;

  _i3.Int64? _longInPath;
  _i3.Int64? get longInPath => _$this._longInPath;
  set longInPath(_i3.Int64? longInPath) => _$this._longInPath = longInPath;

  _i3.Int64? _longInQuery;
  _i3.Int64? get longInQuery => _$this._longInQuery;
  set longInQuery(_i3.Int64? longInQuery) => _$this._longInQuery = longInQuery;

  _i3.Int64? _longInHeader;
  _i3.Int64? get longInHeader => _$this._longInHeader;
  set longInHeader(_i3.Int64? longInHeader) =>
      _$this._longInHeader = longInHeader;

  MalformedLongInputBuilder();

  MalformedLongInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longInBody = $v.longInBody;
      _longInPath = $v.longInPath;
      _longInQuery = $v.longInQuery;
      _longInHeader = $v.longInHeader;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedLongInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedLongInput;
  }

  @override
  void update(void Function(MalformedLongInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedLongInput build() => _build();

  _$MalformedLongInput _build() {
    final _$result = _$v ??
        new _$MalformedLongInput._(
            longInBody: longInBody,
            longInPath: BuiltValueNullFieldError.checkNotNull(
                longInPath, r'MalformedLongInput', 'longInPath'),
            longInQuery: longInQuery,
            longInHeader: longInHeader);
    replace(_$result);
    return _$result;
  }
}

class _$MalformedLongInputPayload extends MalformedLongInputPayload {
  @override
  final _i3.Int64? longInBody;

  factory _$MalformedLongInputPayload(
          [void Function(MalformedLongInputPayloadBuilder)? updates]) =>
      (new MalformedLongInputPayloadBuilder()..update(updates))._build();

  _$MalformedLongInputPayload._({this.longInBody}) : super._();

  @override
  MalformedLongInputPayload rebuild(
          void Function(MalformedLongInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedLongInputPayloadBuilder toBuilder() =>
      new MalformedLongInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedLongInputPayload && longInBody == other.longInBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, longInBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedLongInputPayloadBuilder
    implements
        Builder<MalformedLongInputPayload, MalformedLongInputPayloadBuilder> {
  _$MalformedLongInputPayload? _$v;

  _i3.Int64? _longInBody;
  _i3.Int64? get longInBody => _$this._longInBody;
  set longInBody(_i3.Int64? longInBody) => _$this._longInBody = longInBody;

  MalformedLongInputPayloadBuilder();

  MalformedLongInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longInBody = $v.longInBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedLongInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedLongInputPayload;
  }

  @override
  void update(void Function(MalformedLongInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedLongInputPayload build() => _build();

  _$MalformedLongInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedLongInputPayload._(longInBody: longInBody);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
