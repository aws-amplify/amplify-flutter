// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_timestamp_header_default_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampHeaderDefaultInput
    extends MalformedTimestampHeaderDefaultInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampHeaderDefaultInput(
          [void Function(MalformedTimestampHeaderDefaultInputBuilder)?
              updates]) =>
      (new MalformedTimestampHeaderDefaultInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampHeaderDefaultInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampHeaderDefaultInput', 'timestamp');
  }

  @override
  MalformedTimestampHeaderDefaultInput rebuild(
          void Function(MalformedTimestampHeaderDefaultInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampHeaderDefaultInputBuilder toBuilder() =>
      new MalformedTimestampHeaderDefaultInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampHeaderDefaultInput &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedTimestampHeaderDefaultInputBuilder
    implements
        Builder<MalformedTimestampHeaderDefaultInput,
            MalformedTimestampHeaderDefaultInputBuilder> {
  _$MalformedTimestampHeaderDefaultInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampHeaderDefaultInputBuilder() {
    MalformedTimestampHeaderDefaultInput._init(this);
  }

  MalformedTimestampHeaderDefaultInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampHeaderDefaultInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampHeaderDefaultInput;
  }

  @override
  void update(
      void Function(MalformedTimestampHeaderDefaultInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampHeaderDefaultInput build() => _build();

  _$MalformedTimestampHeaderDefaultInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampHeaderDefaultInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                r'MalformedTimestampHeaderDefaultInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampHeaderDefaultInputPayload
    extends MalformedTimestampHeaderDefaultInputPayload {
  factory _$MalformedTimestampHeaderDefaultInputPayload(
          [void Function(MalformedTimestampHeaderDefaultInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampHeaderDefaultInputPayloadBuilder()
            ..update(updates))
          ._build();

  _$MalformedTimestampHeaderDefaultInputPayload._() : super._();

  @override
  MalformedTimestampHeaderDefaultInputPayload rebuild(
          void Function(MalformedTimestampHeaderDefaultInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampHeaderDefaultInputPayloadBuilder toBuilder() =>
      new MalformedTimestampHeaderDefaultInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampHeaderDefaultInputPayload;
  }

  @override
  int get hashCode {
    return 810611332;
  }
}

class MalformedTimestampHeaderDefaultInputPayloadBuilder
    implements
        Builder<MalformedTimestampHeaderDefaultInputPayload,
            MalformedTimestampHeaderDefaultInputPayloadBuilder> {
  _$MalformedTimestampHeaderDefaultInputPayload? _$v;

  MalformedTimestampHeaderDefaultInputPayloadBuilder() {
    MalformedTimestampHeaderDefaultInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampHeaderDefaultInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampHeaderDefaultInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampHeaderDefaultInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampHeaderDefaultInputPayload build() => _build();

  _$MalformedTimestampHeaderDefaultInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedTimestampHeaderDefaultInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
