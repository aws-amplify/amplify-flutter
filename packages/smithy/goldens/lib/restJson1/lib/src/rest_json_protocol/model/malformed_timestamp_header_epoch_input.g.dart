// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_timestamp_header_epoch_input;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
