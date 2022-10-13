// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_timestamp_query_default_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampQueryDefaultInput
    extends MalformedTimestampQueryDefaultInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampQueryDefaultInput(
          [void Function(MalformedTimestampQueryDefaultInputBuilder)?
              updates]) =>
      (new MalformedTimestampQueryDefaultInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampQueryDefaultInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampQueryDefaultInput', 'timestamp');
  }

  @override
  MalformedTimestampQueryDefaultInput rebuild(
          void Function(MalformedTimestampQueryDefaultInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampQueryDefaultInputBuilder toBuilder() =>
      new MalformedTimestampQueryDefaultInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampQueryDefaultInput &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timestamp.hashCode));
  }
}

class MalformedTimestampQueryDefaultInputBuilder
    implements
        Builder<MalformedTimestampQueryDefaultInput,
            MalformedTimestampQueryDefaultInputBuilder> {
  _$MalformedTimestampQueryDefaultInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampQueryDefaultInputBuilder() {
    MalformedTimestampQueryDefaultInput._init(this);
  }

  MalformedTimestampQueryDefaultInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampQueryDefaultInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampQueryDefaultInput;
  }

  @override
  void update(
      void Function(MalformedTimestampQueryDefaultInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampQueryDefaultInput build() => _build();

  _$MalformedTimestampQueryDefaultInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampQueryDefaultInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                r'MalformedTimestampQueryDefaultInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampQueryDefaultInputPayload
    extends MalformedTimestampQueryDefaultInputPayload {
  factory _$MalformedTimestampQueryDefaultInputPayload(
          [void Function(MalformedTimestampQueryDefaultInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampQueryDefaultInputPayloadBuilder()..update(updates))
          ._build();

  _$MalformedTimestampQueryDefaultInputPayload._() : super._();

  @override
  MalformedTimestampQueryDefaultInputPayload rebuild(
          void Function(MalformedTimestampQueryDefaultInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampQueryDefaultInputPayloadBuilder toBuilder() =>
      new MalformedTimestampQueryDefaultInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampQueryDefaultInputPayload;
  }

  @override
  int get hashCode {
    return 1053703287;
  }
}

class MalformedTimestampQueryDefaultInputPayloadBuilder
    implements
        Builder<MalformedTimestampQueryDefaultInputPayload,
            MalformedTimestampQueryDefaultInputPayloadBuilder> {
  _$MalformedTimestampQueryDefaultInputPayload? _$v;

  MalformedTimestampQueryDefaultInputPayloadBuilder() {
    MalformedTimestampQueryDefaultInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampQueryDefaultInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampQueryDefaultInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampQueryDefaultInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampQueryDefaultInputPayload build() => _build();

  _$MalformedTimestampQueryDefaultInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedTimestampQueryDefaultInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
