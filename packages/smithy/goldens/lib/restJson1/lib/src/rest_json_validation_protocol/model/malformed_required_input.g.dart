// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_required_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedRequiredInput extends MalformedRequiredInput {
  @override
  final String string;
  @override
  final String stringInQuery;
  @override
  final String stringInHeader;

  factory _$MalformedRequiredInput(
          [void Function(MalformedRequiredInputBuilder)? updates]) =>
      (new MalformedRequiredInputBuilder()..update(updates))._build();

  _$MalformedRequiredInput._(
      {required this.string,
      required this.stringInQuery,
      required this.stringInHeader})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        string, r'MalformedRequiredInput', 'string');
    BuiltValueNullFieldError.checkNotNull(
        stringInQuery, r'MalformedRequiredInput', 'stringInQuery');
    BuiltValueNullFieldError.checkNotNull(
        stringInHeader, r'MalformedRequiredInput', 'stringInHeader');
  }

  @override
  MalformedRequiredInput rebuild(
          void Function(MalformedRequiredInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedRequiredInputBuilder toBuilder() =>
      new MalformedRequiredInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedRequiredInput &&
        string == other.string &&
        stringInQuery == other.stringInQuery &&
        stringInHeader == other.stringInHeader;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, stringInQuery.hashCode);
    _$hash = $jc(_$hash, stringInHeader.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedRequiredInputBuilder
    implements Builder<MalformedRequiredInput, MalformedRequiredInputBuilder> {
  _$MalformedRequiredInput? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  String? _stringInQuery;
  String? get stringInQuery => _$this._stringInQuery;
  set stringInQuery(String? stringInQuery) =>
      _$this._stringInQuery = stringInQuery;

  String? _stringInHeader;
  String? get stringInHeader => _$this._stringInHeader;
  set stringInHeader(String? stringInHeader) =>
      _$this._stringInHeader = stringInHeader;

  MalformedRequiredInputBuilder();

  MalformedRequiredInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _stringInQuery = $v.stringInQuery;
      _stringInHeader = $v.stringInHeader;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedRequiredInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedRequiredInput;
  }

  @override
  void update(void Function(MalformedRequiredInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedRequiredInput build() => _build();

  _$MalformedRequiredInput _build() {
    final _$result = _$v ??
        new _$MalformedRequiredInput._(
            string: BuiltValueNullFieldError.checkNotNull(
                string, r'MalformedRequiredInput', 'string'),
            stringInQuery: BuiltValueNullFieldError.checkNotNull(
                stringInQuery, r'MalformedRequiredInput', 'stringInQuery'),
            stringInHeader: BuiltValueNullFieldError.checkNotNull(
                stringInHeader, r'MalformedRequiredInput', 'stringInHeader'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedRequiredInputPayload extends MalformedRequiredInputPayload {
  @override
  final String string;

  factory _$MalformedRequiredInputPayload(
          [void Function(MalformedRequiredInputPayloadBuilder)? updates]) =>
      (new MalformedRequiredInputPayloadBuilder()..update(updates))._build();

  _$MalformedRequiredInputPayload._({required this.string}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        string, r'MalformedRequiredInputPayload', 'string');
  }

  @override
  MalformedRequiredInputPayload rebuild(
          void Function(MalformedRequiredInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedRequiredInputPayloadBuilder toBuilder() =>
      new MalformedRequiredInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedRequiredInputPayload && string == other.string;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedRequiredInputPayloadBuilder
    implements
        Builder<MalformedRequiredInputPayload,
            MalformedRequiredInputPayloadBuilder> {
  _$MalformedRequiredInputPayload? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  MalformedRequiredInputPayloadBuilder();

  MalformedRequiredInputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedRequiredInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedRequiredInputPayload;
  }

  @override
  void update(void Function(MalformedRequiredInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedRequiredInputPayload build() => _build();

  _$MalformedRequiredInputPayload _build() {
    final _$result = _$v ??
        new _$MalformedRequiredInputPayload._(
            string: BuiltValueNullFieldError.checkNotNull(
                string, r'MalformedRequiredInputPayload', 'string'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
