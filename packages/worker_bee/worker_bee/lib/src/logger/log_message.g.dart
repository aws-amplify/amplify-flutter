// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LogLevel _$ALL = const LogLevel._('ALL');
const LogLevel _$OFF = const LogLevel._('OFF');
const LogLevel _$SHOUT = const LogLevel._('SHOUT');
const LogLevel _$SEVERE = const LogLevel._('SEVERE');
const LogLevel _$WARNING = const LogLevel._('WARNING');
const LogLevel _$INFO = const LogLevel._('INFO');
const LogLevel _$CONFIG = const LogLevel._('CONFIG');
const LogLevel _$FINE = const LogLevel._('FINE');
const LogLevel _$FINER = const LogLevel._('FINER');
const LogLevel _$FINEST = const LogLevel._('FINEST');

LogLevel _$valueOf(String name) {
  switch (name) {
    case 'ALL':
      return _$ALL;
    case 'OFF':
      return _$OFF;
    case 'SHOUT':
      return _$SHOUT;
    case 'SEVERE':
      return _$SEVERE;
    case 'WARNING':
      return _$WARNING;
    case 'INFO':
      return _$INFO;
    case 'CONFIG':
      return _$CONFIG;
    case 'FINE':
      return _$FINE;
    case 'FINER':
      return _$FINER;
    case 'FINEST':
      return _$FINEST;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LogLevel> _$values = new BuiltSet<LogLevel>(const <LogLevel>[
  _$ALL,
  _$OFF,
  _$SHOUT,
  _$SEVERE,
  _$WARNING,
  _$INFO,
  _$CONFIG,
  _$FINE,
  _$FINER,
  _$FINEST,
]);

Serializer<LogLevel> _$logLevelSerializer = new _$LogLevelSerializer();
Serializer<LogMessage> _$logMessageSerializer = new _$LogMessageSerializer();

class _$LogLevelSerializer implements PrimitiveSerializer<LogLevel> {
  @override
  final Iterable<Type> types = const <Type>[LogLevel];
  @override
  final String wireName = 'LogLevel';

  @override
  Object serialize(Serializers serializers, LogLevel object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  LogLevel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LogLevel.valueOf(serialized as String);
}

class _$LogMessageSerializer implements StructuredSerializer<LogMessage> {
  @override
  final Iterable<Type> types = const [LogMessage, _$LogMessage];
  @override
  final String wireName = 'LogMessage';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'workerName',
      serializers.serialize(object.workerName,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'local',
      serializers.serialize(object.local, specifiedType: const FullType(bool)),
      'level',
      serializers.serialize(object.level,
          specifiedType: const FullType(LogLevel)),
    ];
    Object? value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Object)));
    }
    value = object.stackTrace;
    if (value != null) {
      result
        ..add('stackTrace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StackTrace)));
    }
    return result;
  }

  @override
  LogMessage deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'workerName':
          result.workerName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'local':
          result.local = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(LogLevel))! as LogLevel;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(Object));
          break;
        case 'stackTrace':
          result.stackTrace = serializers.deserialize(value,
              specifiedType: const FullType(StackTrace)) as StackTrace?;
          break;
      }
    }

    return result.build();
  }
}

class _$LogMessage extends LogMessage {
  @override
  final String workerName;
  @override
  final String message;
  @override
  final bool local;
  @override
  final LogLevel level;
  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  factory _$LogMessage([void Function(LogMessageBuilder)? updates]) =>
      (new LogMessageBuilder()..update(updates))._build();

  _$LogMessage._(
      {required this.workerName,
      required this.message,
      required this.local,
      required this.level,
      this.error,
      this.stackTrace})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        workerName, 'LogMessage', 'workerName');
    BuiltValueNullFieldError.checkNotNull(message, 'LogMessage', 'message');
    BuiltValueNullFieldError.checkNotNull(local, 'LogMessage', 'local');
    BuiltValueNullFieldError.checkNotNull(level, 'LogMessage', 'level');
  }

  @override
  LogMessage rebuild(void Function(LogMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogMessageBuilder toBuilder() => new LogMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogMessage &&
        workerName == other.workerName &&
        message == other.message &&
        local == other.local &&
        level == other.level &&
        error == other.error &&
        stackTrace == other.stackTrace;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, workerName.hashCode), message.hashCode),
                    local.hashCode),
                level.hashCode),
            error.hashCode),
        stackTrace.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LogMessage')
          ..add('workerName', workerName)
          ..add('message', message)
          ..add('local', local)
          ..add('level', level)
          ..add('error', error)
          ..add('stackTrace', stackTrace))
        .toString();
  }
}

class LogMessageBuilder implements Builder<LogMessage, LogMessageBuilder> {
  _$LogMessage? _$v;

  String? _workerName;
  String? get workerName => _$this._workerName;
  set workerName(String? workerName) => _$this._workerName = workerName;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _local;
  bool? get local => _$this._local;
  set local(bool? local) => _$this._local = local;

  LogLevel? _level;
  LogLevel? get level => _$this._level;
  set level(LogLevel? level) => _$this._level = level;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  StackTrace? _stackTrace;
  StackTrace? get stackTrace => _$this._stackTrace;
  set stackTrace(StackTrace? stackTrace) => _$this._stackTrace = stackTrace;

  LogMessageBuilder();

  LogMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workerName = $v.workerName;
      _message = $v.message;
      _local = $v.local;
      _level = $v.level;
      _error = $v.error;
      _stackTrace = $v.stackTrace;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogMessage;
  }

  @override
  void update(void Function(LogMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogMessage build() => _build();

  _$LogMessage _build() {
    final _$result = _$v ??
        new _$LogMessage._(
            workerName: BuiltValueNullFieldError.checkNotNull(
                workerName, 'LogMessage', 'workerName'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'LogMessage', 'message'),
            local: BuiltValueNullFieldError.checkNotNull(
                local, 'LogMessage', 'local'),
            level: BuiltValueNullFieldError.checkNotNull(
                level, 'LogMessage', 'level'),
            error: error,
            stackTrace: stackTrace);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
