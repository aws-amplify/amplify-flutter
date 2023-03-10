// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.configuration_recorder_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationRecorderStatus extends ConfigurationRecorderStatus {
  @override
  final String? lastErrorCode;
  @override
  final String? lastErrorMessage;
  @override
  final DateTime? lastStartTime;
  @override
  final _i2.RecorderStatus? lastStatus;
  @override
  final DateTime? lastStatusChangeTime;
  @override
  final DateTime? lastStopTime;
  @override
  final String? name;
  @override
  final bool? recording;

  factory _$ConfigurationRecorderStatus(
          [void Function(ConfigurationRecorderStatusBuilder)? updates]) =>
      (new ConfigurationRecorderStatusBuilder()..update(updates))._build();

  _$ConfigurationRecorderStatus._(
      {this.lastErrorCode,
      this.lastErrorMessage,
      this.lastStartTime,
      this.lastStatus,
      this.lastStatusChangeTime,
      this.lastStopTime,
      this.name,
      this.recording})
      : super._();

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
        lastErrorCode == other.lastErrorCode &&
        lastErrorMessage == other.lastErrorMessage &&
        lastStartTime == other.lastStartTime &&
        lastStatus == other.lastStatus &&
        lastStatusChangeTime == other.lastStatusChangeTime &&
        lastStopTime == other.lastStopTime &&
        name == other.name &&
        recording == other.recording;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastErrorCode.hashCode);
    _$hash = $jc(_$hash, lastErrorMessage.hashCode);
    _$hash = $jc(_$hash, lastStartTime.hashCode);
    _$hash = $jc(_$hash, lastStatus.hashCode);
    _$hash = $jc(_$hash, lastStatusChangeTime.hashCode);
    _$hash = $jc(_$hash, lastStopTime.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, recording.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigurationRecorderStatusBuilder
    implements
        Builder<ConfigurationRecorderStatus,
            ConfigurationRecorderStatusBuilder> {
  _$ConfigurationRecorderStatus? _$v;

  String? _lastErrorCode;
  String? get lastErrorCode => _$this._lastErrorCode;
  set lastErrorCode(String? lastErrorCode) =>
      _$this._lastErrorCode = lastErrorCode;

  String? _lastErrorMessage;
  String? get lastErrorMessage => _$this._lastErrorMessage;
  set lastErrorMessage(String? lastErrorMessage) =>
      _$this._lastErrorMessage = lastErrorMessage;

  DateTime? _lastStartTime;
  DateTime? get lastStartTime => _$this._lastStartTime;
  set lastStartTime(DateTime? lastStartTime) =>
      _$this._lastStartTime = lastStartTime;

  _i2.RecorderStatus? _lastStatus;
  _i2.RecorderStatus? get lastStatus => _$this._lastStatus;
  set lastStatus(_i2.RecorderStatus? lastStatus) =>
      _$this._lastStatus = lastStatus;

  DateTime? _lastStatusChangeTime;
  DateTime? get lastStatusChangeTime => _$this._lastStatusChangeTime;
  set lastStatusChangeTime(DateTime? lastStatusChangeTime) =>
      _$this._lastStatusChangeTime = lastStatusChangeTime;

  DateTime? _lastStopTime;
  DateTime? get lastStopTime => _$this._lastStopTime;
  set lastStopTime(DateTime? lastStopTime) =>
      _$this._lastStopTime = lastStopTime;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _recording;
  bool? get recording => _$this._recording;
  set recording(bool? recording) => _$this._recording = recording;

  ConfigurationRecorderStatusBuilder() {
    ConfigurationRecorderStatus._init(this);
  }

  ConfigurationRecorderStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastErrorCode = $v.lastErrorCode;
      _lastErrorMessage = $v.lastErrorMessage;
      _lastStartTime = $v.lastStartTime;
      _lastStatus = $v.lastStatus;
      _lastStatusChangeTime = $v.lastStatusChangeTime;
      _lastStopTime = $v.lastStopTime;
      _name = $v.name;
      _recording = $v.recording;
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
            lastErrorCode: lastErrorCode,
            lastErrorMessage: lastErrorMessage,
            lastStartTime: lastStartTime,
            lastStatus: lastStatus,
            lastStatusChangeTime: lastStatusChangeTime,
            lastStopTime: lastStopTime,
            name: name,
            recording: recording);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
