// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_timestamp_body_default_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampBodyDefaultInput
    extends MalformedTimestampBodyDefaultInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampBodyDefaultInput(
          [void Function(MalformedTimestampBodyDefaultInputBuilder)?
              updates]) =>
      (new MalformedTimestampBodyDefaultInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampBodyDefaultInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampBodyDefaultInput', 'timestamp');
  }

  @override
  MalformedTimestampBodyDefaultInput rebuild(
          void Function(MalformedTimestampBodyDefaultInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampBodyDefaultInputBuilder toBuilder() =>
      new MalformedTimestampBodyDefaultInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampBodyDefaultInput &&
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

class MalformedTimestampBodyDefaultInputBuilder
    implements
        Builder<MalformedTimestampBodyDefaultInput,
            MalformedTimestampBodyDefaultInputBuilder> {
  _$MalformedTimestampBodyDefaultInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampBodyDefaultInputBuilder() {
    MalformedTimestampBodyDefaultInput._init(this);
  }

  MalformedTimestampBodyDefaultInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampBodyDefaultInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampBodyDefaultInput;
  }

  @override
  void update(
      void Function(MalformedTimestampBodyDefaultInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampBodyDefaultInput build() => _build();

  _$MalformedTimestampBodyDefaultInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampBodyDefaultInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'MalformedTimestampBodyDefaultInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
