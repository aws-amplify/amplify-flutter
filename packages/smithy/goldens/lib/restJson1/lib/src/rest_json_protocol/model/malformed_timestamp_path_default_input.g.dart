// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_timestamp_path_default_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampPathDefaultInput
    extends MalformedTimestampPathDefaultInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampPathDefaultInput(
          [void Function(MalformedTimestampPathDefaultInputBuilder)?
              updates]) =>
      (new MalformedTimestampPathDefaultInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampPathDefaultInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampPathDefaultInput', 'timestamp');
  }

  @override
  MalformedTimestampPathDefaultInput rebuild(
          void Function(MalformedTimestampPathDefaultInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampPathDefaultInputBuilder toBuilder() =>
      new MalformedTimestampPathDefaultInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampPathDefaultInput &&
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

class MalformedTimestampPathDefaultInputBuilder
    implements
        Builder<MalformedTimestampPathDefaultInput,
            MalformedTimestampPathDefaultInputBuilder> {
  _$MalformedTimestampPathDefaultInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampPathDefaultInputBuilder() {
    MalformedTimestampPathDefaultInput._init(this);
  }

  MalformedTimestampPathDefaultInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampPathDefaultInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampPathDefaultInput;
  }

  @override
  void update(
      void Function(MalformedTimestampPathDefaultInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampPathDefaultInput build() => _build();

  _$MalformedTimestampPathDefaultInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampPathDefaultInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'MalformedTimestampPathDefaultInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

class _$MalformedTimestampPathDefaultInputPayload
    extends MalformedTimestampPathDefaultInputPayload {
  factory _$MalformedTimestampPathDefaultInputPayload(
          [void Function(MalformedTimestampPathDefaultInputPayloadBuilder)?
              updates]) =>
      (new MalformedTimestampPathDefaultInputPayloadBuilder()..update(updates))
          ._build();

  _$MalformedTimestampPathDefaultInputPayload._() : super._();

  @override
  MalformedTimestampPathDefaultInputPayload rebuild(
          void Function(MalformedTimestampPathDefaultInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampPathDefaultInputPayloadBuilder toBuilder() =>
      new MalformedTimestampPathDefaultInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampPathDefaultInputPayload;
  }

  @override
  int get hashCode {
    return 765395277;
  }
}

class MalformedTimestampPathDefaultInputPayloadBuilder
    implements
        Builder<MalformedTimestampPathDefaultInputPayload,
            MalformedTimestampPathDefaultInputPayloadBuilder> {
  _$MalformedTimestampPathDefaultInputPayload? _$v;

  MalformedTimestampPathDefaultInputPayloadBuilder() {
    MalformedTimestampPathDefaultInputPayload._init(this);
  }

  @override
  void replace(MalformedTimestampPathDefaultInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampPathDefaultInputPayload;
  }

  @override
  void update(
      void Function(MalformedTimestampPathDefaultInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampPathDefaultInputPayload build() => _build();

  _$MalformedTimestampPathDefaultInputPayload _build() {
    final _$result = _$v ?? new _$MalformedTimestampPathDefaultInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
