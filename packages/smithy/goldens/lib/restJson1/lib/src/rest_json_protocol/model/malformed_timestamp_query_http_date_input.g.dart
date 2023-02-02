// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_timestamp_query_http_date_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampQueryHttpDateInput
    extends MalformedTimestampQueryHttpDateInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampQueryHttpDateInput(
          [void Function(MalformedTimestampQueryHttpDateInputBuilder)?
              updates]) =>
      (new MalformedTimestampQueryHttpDateInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampQueryHttpDateInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampQueryHttpDateInput', 'timestamp');
  }

  @override
  MalformedTimestampQueryHttpDateInput rebuild(
          void Function(MalformedTimestampQueryHttpDateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampQueryHttpDateInputBuilder toBuilder() =>
      new MalformedTimestampQueryHttpDateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampQueryHttpDateInput &&
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

class MalformedTimestampQueryHttpDateInputBuilder
    implements
        Builder<MalformedTimestampQueryHttpDateInput,
            MalformedTimestampQueryHttpDateInputBuilder> {
  _$MalformedTimestampQueryHttpDateInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampQueryHttpDateInputBuilder() {
    MalformedTimestampQueryHttpDateInput._init(this);
  }

  MalformedTimestampQueryHttpDateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampQueryHttpDateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampQueryHttpDateInput;
  }

  @override
  void update(
      void Function(MalformedTimestampQueryHttpDateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampQueryHttpDateInput build() => _build();

  _$MalformedTimestampQueryHttpDateInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampQueryHttpDateInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                r'MalformedTimestampQueryHttpDateInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampQueryHttpDateInputPayload
    extends MalformedTimestampQueryHttpDateInputPayload {
  factory _$MalformedTimestampQueryHttpDateInputPayload(
          [void Function(MalformedTimestampQueryHttpDateInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampQueryHttpDateInputPayloadBuilder()
            ..update(updates))
          ._build();

  _$MalformedTimestampQueryHttpDateInputPayload._() : super._();

  @override
  MalformedTimestampQueryHttpDateInputPayload rebuild(
          void Function(MalformedTimestampQueryHttpDateInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampQueryHttpDateInputPayloadBuilder toBuilder() =>
      new MalformedTimestampQueryHttpDateInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampQueryHttpDateInputPayload;
  }

  @override
  int get hashCode {
    return 205913142;
  }
}

class MalformedTimestampQueryHttpDateInputPayloadBuilder
    implements
        Builder<MalformedTimestampQueryHttpDateInputPayload,
            MalformedTimestampQueryHttpDateInputPayloadBuilder> {
  _$MalformedTimestampQueryHttpDateInputPayload? _$v;

  MalformedTimestampQueryHttpDateInputPayloadBuilder() {
    MalformedTimestampQueryHttpDateInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampQueryHttpDateInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampQueryHttpDateInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampQueryHttpDateInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampQueryHttpDateInputPayload build() => _build();

  _$MalformedTimestampQueryHttpDateInputPayload _build() {
    final _$result =
        _$v ?? new _$MalformedTimestampQueryHttpDateInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
