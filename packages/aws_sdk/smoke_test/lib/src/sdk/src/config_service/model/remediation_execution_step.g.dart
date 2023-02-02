// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_execution_step;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationExecutionStep extends RemediationExecutionStep {
  @override
  final String? errorMessage;
  @override
  final String? name;
  @override
  final DateTime? startTime;
  @override
  final _i2.RemediationExecutionStepState? state;
  @override
  final DateTime? stopTime;

  factory _$RemediationExecutionStep(
          [void Function(RemediationExecutionStepBuilder)? updates]) =>
      (new RemediationExecutionStepBuilder()..update(updates))._build();

  _$RemediationExecutionStep._(
      {this.errorMessage, this.name, this.startTime, this.state, this.stopTime})
      : super._();

  @override
  RemediationExecutionStep rebuild(
          void Function(RemediationExecutionStepBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemediationExecutionStepBuilder toBuilder() =>
      new RemediationExecutionStepBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemediationExecutionStep &&
        errorMessage == other.errorMessage &&
        name == other.name &&
        startTime == other.startTime &&
        state == other.state &&
        stopTime == other.stopTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stopTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationExecutionStepBuilder
    implements
        Builder<RemediationExecutionStep, RemediationExecutionStepBuilder> {
  _$RemediationExecutionStep? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  _i2.RemediationExecutionStepState? _state;
  _i2.RemediationExecutionStepState? get state => _$this._state;
  set state(_i2.RemediationExecutionStepState? state) => _$this._state = state;

  DateTime? _stopTime;
  DateTime? get stopTime => _$this._stopTime;
  set stopTime(DateTime? stopTime) => _$this._stopTime = stopTime;

  RemediationExecutionStepBuilder() {
    RemediationExecutionStep._init(this);
  }

  RemediationExecutionStepBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _name = $v.name;
      _startTime = $v.startTime;
      _state = $v.state;
      _stopTime = $v.stopTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemediationExecutionStep other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemediationExecutionStep;
  }

  @override
  void update(void Function(RemediationExecutionStepBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemediationExecutionStep build() => _build();

  _$RemediationExecutionStep _build() {
    final _$result = _$v ??
        new _$RemediationExecutionStep._(
            errorMessage: errorMessage,
            name: name,
            startTime: startTime,
            state: state,
            stopTime: stopTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
