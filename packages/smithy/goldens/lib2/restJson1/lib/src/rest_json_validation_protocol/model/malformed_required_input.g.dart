// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.malformed_required_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedRequiredInput extends MalformedRequiredInput {
  @override
  final String string;
  @override
  final String stringInHeader;
  @override
  final String stringInQuery;

  factory _$MalformedRequiredInput(
          [void Function(MalformedRequiredInputBuilder)? updates]) =>
      (new MalformedRequiredInputBuilder()..update(updates))._build();

  _$MalformedRequiredInput._(
      {required this.string,
      required this.stringInHeader,
      required this.stringInQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        string, r'MalformedRequiredInput', 'string');
    BuiltValueNullFieldError.checkNotNull(
        stringInHeader, r'MalformedRequiredInput', 'stringInHeader');
    BuiltValueNullFieldError.checkNotNull(
        stringInQuery, r'MalformedRequiredInput', 'stringInQuery');
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
        stringInHeader == other.stringInHeader &&
        stringInQuery == other.stringInQuery;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, string.hashCode), stringInHeader.hashCode),
        stringInQuery.hashCode));
  }
}

class MalformedRequiredInputBuilder
    implements Builder<MalformedRequiredInput, MalformedRequiredInputBuilder> {
  _$MalformedRequiredInput? _$v;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  String? _stringInHeader;
  String? get stringInHeader => _$this._stringInHeader;
  set stringInHeader(String? stringInHeader) =>
      _$this._stringInHeader = stringInHeader;

  String? _stringInQuery;
  String? get stringInQuery => _$this._stringInQuery;
  set stringInQuery(String? stringInQuery) =>
      _$this._stringInQuery = stringInQuery;

  MalformedRequiredInputBuilder() {
    MalformedRequiredInput._init(this);
  }

  MalformedRequiredInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _string = $v.string;
      _stringInHeader = $v.stringInHeader;
      _stringInQuery = $v.stringInQuery;
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
            stringInHeader: BuiltValueNullFieldError.checkNotNull(
                stringInHeader, r'MalformedRequiredInput', 'stringInHeader'),
            stringInQuery: BuiltValueNullFieldError.checkNotNull(
                stringInQuery, r'MalformedRequiredInput', 'stringInQuery'));
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
    return $jf($jc(0, string.hashCode));
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

  MalformedRequiredInputPayloadBuilder() {
    MalformedRequiredInputPayload._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
