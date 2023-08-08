// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_recorder_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationRecorderStatus extends ConfigurationRecorderStatus {
  @override
  final String? name;
  @override
  final DateTime? lastStartTime;
  @override
  final DateTime? lastStopTime;
  @override
  final bool recording;
  @override
  final _i2.RecorderStatus? lastStatus;
  @override
  final String? lastErrorCode;
  @override
  final String? lastErrorMessage;
  @override
  final DateTime? lastStatusChangeTime;

  factory _$ConfigurationRecorderStatus(
          [void Function(ConfigurationRecorderStatusBuilder)? updates]) =>
      (new ConfigurationRecorderStatusBuilder()..update(updates))._build();

  _$ConfigurationRecorderStatus._(
      {this.name,
      this.lastStartTime,
      this.lastStopTime,
      required this.recording,
      this.lastStatus,
      this.lastErrorCode,
      this.lastErrorMessage,
      this.lastStatusChangeTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        recording, r'ConfigurationRecorderStatus', 'recording');
  }

  @override
  ConfigurationRecorderStatus rebuild(
          void Function(ConfigurationRecorderStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurationRecorderStatusBuilder toBuilder() =>
      new ConfigurationRecorderStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurationRecorderStatus &&
        name == other.name &&
        lastStartTime == other.lastStartTime &&
        lastStopTime == other.lastStopTime &&
        recording == other.recording &&
        lastStatus == other.lastStatus &&
        lastErrorCode == other.lastErrorCode &&
        lastErrorMessage == other.lastErrorMessage &&
        lastStatusChangeTime == other.lastStatusChangeTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lastStartTime.hashCode);
    _$hash = $jc(_$hash, lastStopTime.hashCode);
    _$hash = $jc(_$hash, recording.hashCode);
    _$hash = $jc(_$hash, lastStatus.hashCode);
    _$hash = $jc(_$hash, lastErrorCode.hashCode);
    _$hash = $jc(_$hash, lastErrorMessage.hashCode);
    _$hash = $jc(_$hash, lastStatusChangeTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigurationRecorderStatusBuilder
    implements
        Builder<ConfigurationRecorderStatus,
            ConfigurationRecorderStatusBuilder> {
  _$ConfigurationRecorderStatus? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _lastStartTime;
  DateTime? get lastStartTime => _$this._lastStartTime;
  set lastStartTime(DateTime? lastStartTime) =>
      _$this._lastStartTime = lastStartTime;

  DateTime? _lastStopTime;
  DateTime? get lastStopTime => _$this._lastStopTime;
  set lastStopTime(DateTime? lastStopTime) =>
      _$this._lastStopTime = lastStopTime;

  bool? _recording;
  bool? get recording => _$this._recording;
  set recording(bool? recording) => _$this._recording = recording;

  _i2.RecorderStatus? _lastStatus;
  _i2.RecorderStatus? get lastStatus => _$this._lastStatus;
  set lastStatus(_i2.RecorderStatus? lastStatus) =>
      _$this._lastStatus = lastStatus;

  String? _lastErrorCode;
  String? get lastErrorCode => _$this._lastErrorCode;
  set lastErrorCode(String? lastErrorCode) =>
      _$this._lastErrorCode = lastErrorCode;

  String? _lastErrorMessage;
  String? get lastErrorMessage => _$this._lastErrorMessage;
  set lastErrorMessage(String? lastErrorMessage) =>
      _$this._lastErrorMessage = lastErrorMessage;

  DateTime? _lastStatusChangeTime;
  DateTime? get lastStatusChangeTime => _$this._lastStatusChangeTime;
  set lastStatusChangeTime(DateTime? lastStatusChangeTime) =>
      _$this._lastStatusChangeTime = lastStatusChangeTime;

  ConfigurationRecorderStatusBuilder() {
    ConfigurationRecorderStatus._init(this);
  }

  ConfigurationRecorderStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _lastStartTime = $v.lastStartTime;
      _lastStopTime = $v.lastStopTime;
      _recording = $v.recording;
      _lastStatus = $v.lastStatus;
      _lastErrorCode = $v.lastErrorCode;
      _lastErrorMessage = $v.lastErrorMessage;
      _lastStatusChangeTime = $v.lastStatusChangeTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigurationRecorderStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigurationRecorderStatus;
  }

  @override
  void update(void Function(ConfigurationRecorderStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigurationRecorderStatus build() => _build();

  _$ConfigurationRecorderStatus _build() {
    final _$result = _$v ??
        new _$ConfigurationRecorderStatus._(
            name: name,
            lastStartTime: lastStartTime,
            lastStopTime: lastStopTime,
            recording: BuiltValueNullFieldError.checkNotNull(
                recording, r'ConfigurationRecorderStatus', 'recording'),
            lastStatus: lastStatus,
            lastErrorCode: lastErrorCode,
            lastErrorMessage: lastErrorMessage,
            lastStatusChangeTime: lastStatusChangeTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
