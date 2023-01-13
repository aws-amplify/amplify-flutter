// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.input_log_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputLogEvent extends InputLogEvent {
  @override
  final String message;
  @override
  final _i2.Int64 timestamp;

  factory _$InputLogEvent([void Function(InputLogEventBuilder)? updates]) =>
      (new InputLogEventBuilder()..update(updates))._build();

  _$InputLogEvent._({required this.message, required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(message, r'InputLogEvent', 'message');
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'InputLogEvent', 'timestamp');
  }

  @override
  InputLogEvent rebuild(void Function(InputLogEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputLogEventBuilder toBuilder() => new InputLogEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputLogEvent &&
        message == other.message &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), timestamp.hashCode));
  }
}

class InputLogEventBuilder
    implements Builder<InputLogEvent, InputLogEventBuilder> {
  _$InputLogEvent? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  _i2.Int64? _timestamp;
  _i2.Int64? get timestamp => _$this._timestamp;
  set timestamp(_i2.Int64? timestamp) => _$this._timestamp = timestamp;

  InputLogEventBuilder() {
    InputLogEvent._init(this);
  }

  InputLogEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputLogEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputLogEvent;
  }

  @override
  void update(void Function(InputLogEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputLogEvent build() => _build();

  _$InputLogEvent _build() {
    final _$result = _$v ??
        new _$InputLogEvent._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InputLogEvent', 'message'),
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'InputLogEvent', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
