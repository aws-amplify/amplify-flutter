// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_timestamp_header_date_time_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampHeaderDateTimeInput
    extends MalformedTimestampHeaderDateTimeInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampHeaderDateTimeInput(
          [void Function(MalformedTimestampHeaderDateTimeInputBuilder)?
              updates]) =>
      (new MalformedTimestampHeaderDateTimeInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampHeaderDateTimeInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampHeaderDateTimeInput', 'timestamp');
  }

  @override
  MalformedTimestampHeaderDateTimeInput rebuild(
          void Function(MalformedTimestampHeaderDateTimeInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampHeaderDateTimeInputBuilder toBuilder() =>
      new MalformedTimestampHeaderDateTimeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampHeaderDateTimeInput &&
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

class MalformedTimestampHeaderDateTimeInputBuilder
    implements
        Builder<MalformedTimestampHeaderDateTimeInput,
            MalformedTimestampHeaderDateTimeInputBuilder> {
  _$MalformedTimestampHeaderDateTimeInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampHeaderDateTimeInputBuilder() {
    MalformedTimestampHeaderDateTimeInput._init(this);
  }

  MalformedTimestampHeaderDateTimeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampHeaderDateTimeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampHeaderDateTimeInput;
  }

  @override
  void update(
      void Function(MalformedTimestampHeaderDateTimeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampHeaderDateTimeInput build() => _build();

  _$MalformedTimestampHeaderDateTimeInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampHeaderDateTimeInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                r'MalformedTimestampHeaderDateTimeInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampHeaderDateTimeInputPayload
    extends MalformedTimestampHeaderDateTimeInputPayload {
  factory _$MalformedTimestampHeaderDateTimeInputPayload(
          [void Function(MalformedTimestampHeaderDateTimeInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampHeaderDateTimeInputPayloadBuilder()
            ..update(updates))
          ._build();

  _$MalformedTimestampHeaderDateTimeInputPayload._() : super._();

  @override
  MalformedTimestampHeaderDateTimeInputPayload rebuild(
          void Function(MalformedTimestampHeaderDateTimeInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampHeaderDateTimeInputPayloadBuilder toBuilder() =>
      new MalformedTimestampHeaderDateTimeInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampHeaderDateTimeInputPayload;
  }

  @override
  int get hashCode {
    return 218403017;
  }
}

class MalformedTimestampHeaderDateTimeInputPayloadBuilder
    implements
        Builder<MalformedTimestampHeaderDateTimeInputPayload,
            MalformedTimestampHeaderDateTimeInputPayloadBuilder> {
  _$MalformedTimestampHeaderDateTimeInputPayload? _$v;

  MalformedTimestampHeaderDateTimeInputPayloadBuilder() {
    MalformedTimestampHeaderDateTimeInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampHeaderDateTimeInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampHeaderDateTimeInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampHeaderDateTimeInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampHeaderDateTimeInputPayload build() => _build();

  _$MalformedTimestampHeaderDateTimeInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedTimestampHeaderDateTimeInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
