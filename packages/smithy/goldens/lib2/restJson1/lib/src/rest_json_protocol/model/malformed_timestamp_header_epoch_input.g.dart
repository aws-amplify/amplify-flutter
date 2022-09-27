// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_timestamp_header_epoch_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampHeaderEpochInput
    extends MalformedTimestampHeaderEpochInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampHeaderEpochInput(
          [void Function(MalformedTimestampHeaderEpochInputBuilder)?
              updates]) =>
      (new MalformedTimestampHeaderEpochInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampHeaderEpochInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampHeaderEpochInput', 'timestamp');
  }

  @override
  MalformedTimestampHeaderEpochInput rebuild(
          void Function(MalformedTimestampHeaderEpochInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampHeaderEpochInputBuilder toBuilder() =>
      new MalformedTimestampHeaderEpochInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampHeaderEpochInput &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timestamp.hashCode));
  }
}

class MalformedTimestampHeaderEpochInputBuilder
    implements
        Builder<MalformedTimestampHeaderEpochInput,
            MalformedTimestampHeaderEpochInputBuilder> {
  _$MalformedTimestampHeaderEpochInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampHeaderEpochInputBuilder() {
    MalformedTimestampHeaderEpochInput._init(this);
  }

  MalformedTimestampHeaderEpochInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampHeaderEpochInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampHeaderEpochInput;
  }

  @override
  void update(
      void Function(MalformedTimestampHeaderEpochInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampHeaderEpochInput build() => _build();

  _$MalformedTimestampHeaderEpochInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampHeaderEpochInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'MalformedTimestampHeaderEpochInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampHeaderEpochInputPayload
    extends MalformedTimestampHeaderEpochInputPayload {
  factory _$MalformedTimestampHeaderEpochInputPayload(
          [void Function(MalformedTimestampHeaderEpochInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampHeaderEpochInputPayloadBuilder()..update(updates))
          ._build();

  _$MalformedTimestampHeaderEpochInputPayload._() : super._();

  @override
  MalformedTimestampHeaderEpochInputPayload rebuild(
          void Function(MalformedTimestampHeaderEpochInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampHeaderEpochInputPayloadBuilder toBuilder() =>
      new MalformedTimestampHeaderEpochInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampHeaderEpochInputPayload;
  }

  @override
  int get hashCode {
    return 588221401;
  }
}

class MalformedTimestampHeaderEpochInputPayloadBuilder
    implements
        Builder<MalformedTimestampHeaderEpochInputPayload,
            MalformedTimestampHeaderEpochInputPayloadBuilder> {
  _$MalformedTimestampHeaderEpochInputPayload? _$v;

  MalformedTimestampHeaderEpochInputPayloadBuilder() {
    MalformedTimestampHeaderEpochInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampHeaderEpochInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampHeaderEpochInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampHeaderEpochInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampHeaderEpochInputPayload build() => _build();

  _$MalformedTimestampHeaderEpochInputPayload _build() {
    final _$result = _$v ?? new _$MalformedTimestampHeaderEpochInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
