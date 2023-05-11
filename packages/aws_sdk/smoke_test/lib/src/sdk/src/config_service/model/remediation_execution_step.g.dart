// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_execution_step;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationExecutionStep extends RemediationExecutionStep {
  @override
  final String? name;
  @override
  final _i2.RemediationExecutionStepState? state;
  @override
  final String? errorMessage;
  @override
  final DateTime? startTime;
  @override
  final DateTime? stopTime;

  factory _$RemediationExecutionStep(
          [void Function(RemediationExecutionStepBuilder)? updates]) =>
      (new RemediationExecutionStepBuilder()..update(updates))._build();

  _$RemediationExecutionStep._(
      {this.name, this.state, this.errorMessage, this.startTime, this.stopTime})
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
        name == other.name &&
        state == other.state &&
        errorMessage == other.errorMessage &&
        startTime == other.startTime &&
        stopTime == other.stopTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, stopTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationExecutionStepBuilder
    implements
        Builder<RemediationExecutionStep, RemediationExecutionStepBuilder> {
  _$RemediationExecutionStep? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.RemediationExecutionStepState? _state;
  _i2.RemediationExecutionStepState? get state => _$this._state;
  set state(_i2.RemediationExecutionStepState? state) => _$this._state = state;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _stopTime;
  DateTime? get stopTime => _$this._stopTime;
  set stopTime(DateTime? stopTime) => _$this._stopTime = stopTime;

  RemediationExecutionStepBuilder() {
    RemediationExecutionStep._init(this);
  }

  RemediationExecutionStepBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _state = $v.state;
      _errorMessage = $v.errorMessage;
      _startTime = $v.startTime;
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
            name: name,
            state: state,
            errorMessage: errorMessage,
            startTime: startTime,
            stopTime: stopTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
