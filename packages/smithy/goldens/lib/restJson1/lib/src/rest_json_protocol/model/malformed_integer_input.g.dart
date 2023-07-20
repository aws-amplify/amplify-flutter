// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_integer_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedIntegerInput extends MalformedIntegerInput {
  @override
  final int? integerInBody;
  @override
  final int integerInPath;
  @override
  final int? integerInQuery;
  @override
  final int? integerInHeader;

  factory _$MalformedIntegerInput(
          [void Function(MalformedIntegerInputBuilder)? updates]) =>
      (new MalformedIntegerInputBuilder()..update(updates))._build();

  _$MalformedIntegerInput._(
      {this.integerInBody,
      required this.integerInPath,
      this.integerInQuery,
      this.integerInHeader})
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
        integerInPath == other.integerInPath &&
        integerInQuery == other.integerInQuery &&
        integerInHeader == other.integerInHeader;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, integerInBody.hashCode);
    _$hash = $jc(_$hash, integerInPath.hashCode);
    _$hash = $jc(_$hash, integerInQuery.hashCode);
    _$hash = $jc(_$hash, integerInHeader.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedIntegerInputBuilder
    implements Builder<MalformedIntegerInput, MalformedIntegerInputBuilder> {
  _$MalformedIntegerInput? _$v;

  int? _integerInBody;
  int? get integerInBody => _$this._integerInBody;
  set integerInBody(int? integerInBody) =>
      _$this._integerInBody = integerInBody;

  int? _integerInPath;
  int? get integerInPath => _$this._integerInPath;
  set integerInPath(int? integerInPath) =>
      _$this._integerInPath = integerInPath;

  int? _integerInQuery;
  int? get integerInQuery => _$this._integerInQuery;
  set integerInQuery(int? integerInQuery) =>
      _$this._integerInQuery = integerInQuery;

  int? _integerInHeader;
  int? get integerInHeader => _$this._integerInHeader;
  set integerInHeader(int? integerInHeader) =>
      _$this._integerInHeader = integerInHeader;

  MalformedIntegerInputBuilder();

  MalformedIntegerInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _integerInBody = $v.integerInBody;
      _integerInPath = $v.integerInPath;
      _integerInQuery = $v.integerInQuery;
      _integerInHeader = $v.integerInHeader;
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
            integerInPath: BuiltValueNullFieldError.checkNotNull(
                integerInPath, r'MalformedIntegerInput', 'integerInPath'),
            integerInQuery: integerInQuery,
            integerInHeader: integerInHeader);
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
    var _$hash = 0;
    _$hash = $jc(_$hash, integerInBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  MalformedIntegerInputPayloadBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
