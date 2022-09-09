// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.malformed_timestamp_body_http_date_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedTimestampBodyHttpDateInput
    extends MalformedTimestampBodyHttpDateInput {
  @override
  final DateTime timestamp;

  factory _$MalformedTimestampBodyHttpDateInput(
          [void Function(MalformedTimestampBodyHttpDateInputBuilder)?
              updates]) =>
      (new MalformedTimestampBodyHttpDateInputBuilder()..update(updates))
          ._build();

  _$MalformedTimestampBodyHttpDateInput._({required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'MalformedTimestampBodyHttpDateInput', 'timestamp');
  }

  @override
  MalformedTimestampBodyHttpDateInput rebuild(
          void Function(MalformedTimestampBodyHttpDateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedTimestampBodyHttpDateInputBuilder toBuilder() =>
      new MalformedTimestampBodyHttpDateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedTimestampBodyHttpDateInput &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(0, timestamp.hashCode));
  }
}

class MalformedTimestampBodyHttpDateInputBuilder
    implements
        Builder<MalformedTimestampBodyHttpDateInput,
            MalformedTimestampBodyHttpDateInputBuilder> {
  _$MalformedTimestampBodyHttpDateInput? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  MalformedTimestampBodyHttpDateInputBuilder() {
    MalformedTimestampBodyHttpDateInput._init(this);
  }

  MalformedTimestampBodyHttpDateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedTimestampBodyHttpDateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedTimestampBodyHttpDateInput;
  }

  @override
  void update(
      void Function(MalformedTimestampBodyHttpDateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedTimestampBodyHttpDateInput build() => _build();

  _$MalformedTimestampBodyHttpDateInput _build() {
    final _$result = _$v ??
        new _$MalformedTimestampBodyHttpDateInput._(
            timestamp: BuiltValueNullFieldError.checkNotNull(timestamp,
                r'MalformedTimestampBodyHttpDateInput', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
