// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_log_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputLogEvent extends InputLogEvent {
  @override
  final _i2.Int64 timestamp;
  @override
  final String message;

  factory _$InputLogEvent([void Function(InputLogEventBuilder)? updates]) =>
      (new InputLogEventBuilder()..update(updates))._build();

  _$InputLogEvent._({required this.timestamp, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        timestamp, r'InputLogEvent', 'timestamp');
    BuiltValueNullFieldError.checkNotNull(message, r'InputLogEvent', 'message');
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
        timestamp == other.timestamp &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InputLogEventBuilder
    implements Builder<InputLogEvent, InputLogEventBuilder> {
  _$InputLogEvent? _$v;

  _i2.Int64? _timestamp;
  _i2.Int64? get timestamp => _$this._timestamp;
  set timestamp(_i2.Int64? timestamp) => _$this._timestamp = timestamp;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InputLogEventBuilder() {
    InputLogEvent._init(this);
  }

  InputLogEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _message = $v.message;
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
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'InputLogEvent', 'timestamp'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InputLogEvent', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
