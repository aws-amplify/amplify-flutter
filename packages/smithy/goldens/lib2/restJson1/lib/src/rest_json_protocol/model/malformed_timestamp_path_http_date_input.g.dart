// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_timestamp_path_http_date_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampPathHttpDateInput
    extends MalformedTimestampPathHttpDateInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampPathHttpDateInput(
          [void Function(MalformedTimestampPathHttpDateInputBuilder)?
              updates]) =>
      (new MalformedTimestampPathHttpDateInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampPathHttpDateInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampPathHttpDateInput', 'timestamp');
  }

  @override
  MalformedTimestampPathHttpDateInput rebuild(
          void Function(MalformedTimestampPathHttpDateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampPathHttpDateInputBuilder toBuilder() =>
      new MalformedTimestampPathHttpDateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampPathHttpDateInput &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timestamp.hashCode));
  }
}

class MalformedTimestampPathHttpDateInputBuilder
    implements
        Builder<MalformedTimestampPathHttpDateInput,
            MalformedTimestampPathHttpDateInputBuilder> {
  _$MalformedTimestampPathHttpDateInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampPathHttpDateInputBuilder() {
    MalformedTimestampPathHttpDateInput._init(this);
  }

  MalformedTimestampPathHttpDateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampPathHttpDateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampPathHttpDateInput;
  }

  @override
  void update(
      void Function(MalformedTimestampPathHttpDateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampPathHttpDateInput build() => _build();

  _$MalformedTimestampPathHttpDateInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampPathHttpDateInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                r'MalformedTimestampPathHttpDateInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampPathHttpDateInputPayload
    extends MalformedTimestampPathHttpDateInputPayload {
  factory _$MalformedTimestampPathHttpDateInputPayload(
          [void Function(MalformedTimestampPathHttpDateInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampPathHttpDateInputPayloadBuilder()..update(updates))
          ._build();

  _$MalformedTimestampPathHttpDateInputPayload._() : super._();

  @override
  MalformedTimestampPathHttpDateInputPayload rebuild(
          void Function(MalformedTimestampPathHttpDateInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampPathHttpDateInputPayloadBuilder toBuilder() =>
      new MalformedTimestampPathHttpDateInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampPathHttpDateInputPayload;
  }

  @override
  int get hashCode {
    return 1054688279;
  }
}

class MalformedTimestampPathHttpDateInputPayloadBuilder
    implements
        Builder<MalformedTimestampPathHttpDateInputPayload,
            MalformedTimestampPathHttpDateInputPayloadBuilder> {
  _$MalformedTimestampPathHttpDateInputPayload? _$v;

  MalformedTimestampPathHttpDateInputPayloadBuilder() {
    MalformedTimestampPathHttpDateInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampPathHttpDateInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampPathHttpDateInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampPathHttpDateInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampPathHttpDateInputPayload build() => _build();

  _$MalformedTimestampPathHttpDateInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedTimestampPathHttpDateInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
