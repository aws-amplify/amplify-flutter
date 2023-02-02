// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_timestamp_query_epoch_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampQueryEpochInput
    extends MalformedTimestampQueryEpochInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampQueryEpochInput(
          [void Function(MalformedTimestampQueryEpochInputBuilder)? updates]) =>
      (new MalformedTimestampQueryEpochInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampQueryEpochInput._({required this.timestamp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampQueryEpochInput', 'timestamp');
  }

  @override
  MalformedTimestampQueryEpochInput rebuild(
          void Function(MalformedTimestampQueryEpochInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampQueryEpochInputBuilder toBuilder() =>
      new MalformedTimestampQueryEpochInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampQueryEpochInput &&
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

class MalformedTimestampQueryEpochInputBuilder
    implements
        Builder<MalformedTimestampQueryEpochInput,
            MalformedTimestampQueryEpochInputBuilder> {
  _$MalformedTimestampQueryEpochInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampQueryEpochInputBuilder() {
    MalformedTimestampQueryEpochInput._init(this);
  }

  MalformedTimestampQueryEpochInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampQueryEpochInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampQueryEpochInput;
  }

  @override
  void update(
      void Function(MalformedTimestampQueryEpochInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampQueryEpochInput build() => _build();

  _$MalformedTimestampQueryEpochInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampQueryEpochInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'MalformedTimestampQueryEpochInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampQueryEpochInputPayload
    extends MalformedTimestampQueryEpochInputPayload {
  factory _$MalformedTimestampQueryEpochInputPayload(
          [void Function(MalformedTimestampQueryEpochInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampQueryEpochInputPayloadBuilder()..update(updates))
          ._build();

  _$MalformedTimestampQueryEpochInputPayload._() : super._();

  @override
  MalformedTimestampQueryEpochInputPayload rebuild(
          void Function(MalformedTimestampQueryEpochInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampQueryEpochInputPayloadBuilder toBuilder() =>
      new MalformedTimestampQueryEpochInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampQueryEpochInputPayload;
  }

  @override
  int get hashCode {
    return 282015774;
  }
}

class MalformedTimestampQueryEpochInputPayloadBuilder
    implements
        Builder<MalformedTimestampQueryEpochInputPayload,
            MalformedTimestampQueryEpochInputPayloadBuilder> {
  _$MalformedTimestampQueryEpochInputPayload? _$v;

  MalformedTimestampQueryEpochInputPayloadBuilder() {
    MalformedTimestampQueryEpochInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampQueryEpochInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampQueryEpochInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampQueryEpochInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampQueryEpochInputPayload build() => _build();

  _$MalformedTimestampQueryEpochInputPayload _build() {
    final _$result = _$v ?? new _$MalformedTimestampQueryEpochInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
