// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_timestamp_path_epoch_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampPathEpochInput
    extends MalformedTimestampPathEpochInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampPathEpochInput(
          [void Function(MalformedTimestampPathEpochInputBuilder)? updates]) =>
      (new MalformedTimestampPathEpochInputBuilder()..update(updates))._build();

  _$MalformedTimestampPathEpochInput._({required this.timestamp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampPathEpochInput', 'timestamp');
  }

  @override
  MalformedTimestampPathEpochInput rebuild(
          void Function(MalformedTimestampPathEpochInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampPathEpochInputBuilder toBuilder() =>
      new MalformedTimestampPathEpochInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampPathEpochInput &&
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

class MalformedTimestampPathEpochInputBuilder
    implements
        Builder<MalformedTimestampPathEpochInput,
            MalformedTimestampPathEpochInputBuilder> {
  _$MalformedTimestampPathEpochInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampPathEpochInputBuilder() {
    MalformedTimestampPathEpochInput._init(this);
  }

  MalformedTimestampPathEpochInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampPathEpochInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampPathEpochInput;
  }

  @override
  void update(void Function(MalformedTimestampPathEpochInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampPathEpochInput build() => _build();

  _$MalformedTimestampPathEpochInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampPathEpochInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'MalformedTimestampPathEpochInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampPathEpochInputPayload
    extends MalformedTimestampPathEpochInputPayload {
  factory _$MalformedTimestampPathEpochInputPayload(
          [void Function(MalformedTimestampPathEpochInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampPathEpochInputPayloadBuilder()..update(updates))
          ._build();

  _$MalformedTimestampPathEpochInputPayload._() : super._();

  @override
  MalformedTimestampPathEpochInputPayload rebuild(
          void Function(MalformedTimestampPathEpochInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampPathEpochInputPayloadBuilder toBuilder() =>
      new MalformedTimestampPathEpochInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampPathEpochInputPayload;
  }

  @override
  int get hashCode {
    return 380982136;
  }
}

class MalformedTimestampPathEpochInputPayloadBuilder
    implements
        Builder<MalformedTimestampPathEpochInputPayload,
            MalformedTimestampPathEpochInputPayloadBuilder> {
  _$MalformedTimestampPathEpochInputPayload? _$v;

  MalformedTimestampPathEpochInputPayloadBuilder() {
    MalformedTimestampPathEpochInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampPathEpochInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampPathEpochInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampPathEpochInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampPathEpochInputPayload build() => _build();

  _$MalformedTimestampPathEpochInputPayload _build() {
    final _$result = _$v ?? new _$MalformedTimestampPathEpochInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
