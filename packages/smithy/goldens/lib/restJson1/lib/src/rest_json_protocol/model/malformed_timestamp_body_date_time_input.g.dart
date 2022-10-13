// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.malformed_timestamp_body_date_time_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampBodyDateTimeInput
    extends MalformedTimestampBodyDateTimeInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampBodyDateTimeInput(
          [void Function(MalformedTimestampBodyDateTimeInputBuilder)?
              updates]) =>
      (new MalformedTimestampBodyDateTimeInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampBodyDateTimeInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampBodyDateTimeInput', 'timestamp');
  }

  @override
  MalformedTimestampBodyDateTimeInput rebuild(
          void Function(MalformedTimestampBodyDateTimeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampBodyDateTimeInputBuilder toBuilder() =>
      new MalformedTimestampBodyDateTimeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampBodyDateTimeInput &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timestamp.hashCode));
  }
}

class MalformedTimestampBodyDateTimeInputBuilder
    implements
        Builder<MalformedTimestampBodyDateTimeInput,
            MalformedTimestampBodyDateTimeInputBuilder> {
  _$MalformedTimestampBodyDateTimeInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampBodyDateTimeInputBuilder() {
    MalformedTimestampBodyDateTimeInput._init(this);
  }

  MalformedTimestampBodyDateTimeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampBodyDateTimeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampBodyDateTimeInput;
  }

  @override
  void update(
      void Function(MalformedTimestampBodyDateTimeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampBodyDateTimeInput build() => _build();

  _$MalformedTimestampBodyDateTimeInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampBodyDateTimeInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                r'MalformedTimestampBodyDateTimeInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
