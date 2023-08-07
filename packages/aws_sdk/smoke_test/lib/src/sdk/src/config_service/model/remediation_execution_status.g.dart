// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remediation_execution_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationExecutionStatus extends RemediationExecutionStatus {
  @override
  final ResourceKey? resourceKey;
  @override
  final RemediationExecutionState? state;
  @override
  final _i2.BuiltList<RemediationExecutionStep>? stepDetails;
  @override
  final DateTime? invocationTime;
  @override
  final DateTime? lastUpdatedTime;

  factory _$RemediationExecutionStatus(
          [void Function(RemediationExecutionStatusBuilder)? updates]) =>
      (new RemediationExecutionStatusBuilder()..update(updates))._build();

  _$RemediationExecutionStatus._(
      {this.resourceKey,
      this.state,
      this.stepDetails,
      this.invocationTime,
      this.lastUpdatedTime})
      : super._();

  @override
  RemediationExecutionStatus rebuild(
          void Function(RemediationExecutionStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemediationExecutionStatusBuilder toBuilder() =>
      new RemediationExecutionStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemediationExecutionStatus &&
        resourceKey == other.resourceKey &&
        state == other.state &&
        stepDetails == other.stepDetails &&
        invocationTime == other.invocationTime &&
        lastUpdatedTime == other.lastUpdatedTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceKey.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stepDetails.hashCode);
    _$hash = $jc(_$hash, invocationTime.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationExecutionStatusBuilder
    implements
        Builder<RemediationExecutionStatus, RemediationExecutionStatusBuilder> {
  _$RemediationExecutionStatus? _$v;

  ResourceKeyBuilder? _resourceKey;
  ResourceKeyBuilder get resourceKey =>
      _$this._resourceKey ??= new ResourceKeyBuilder();
  set resourceKey(ResourceKeyBuilder? resourceKey) =>
      _$this._resourceKey = resourceKey;

  RemediationExecutionState? _state;
  RemediationExecutionState? get state => _$this._state;
  set state(RemediationExecutionState? state) => _$this._state = state;

  _i2.ListBuilder<RemediationExecutionStep>? _stepDetails;
  _i2.ListBuilder<RemediationExecutionStep> get stepDetails =>
      _$this._stepDetails ??= new _i2.ListBuilder<RemediationExecutionStep>();
  set stepDetails(_i2.ListBuilder<RemediationExecutionStep>? stepDetails) =>
      _$this._stepDetails = stepDetails;

  DateTime? _invocationTime;
  DateTime? get invocationTime => _$this._invocationTime;
  set invocationTime(DateTime? invocationTime) =>
      _$this._invocationTime = invocationTime;

  DateTime? _lastUpdatedTime;
  DateTime? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(DateTime? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  RemediationExecutionStatusBuilder();

  RemediationExecutionStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceKey = $v.resourceKey?.toBuilder();
      _state = $v.state;
      _stepDetails = $v.stepDetails?.toBuilder();
      _invocationTime = $v.invocationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemediationExecutionStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemediationExecutionStatus;
  }

  @override
  void update(void Function(RemediationExecutionStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemediationExecutionStatus build() => _build();

  _$RemediationExecutionStatus _build() {
    _$RemediationExecutionStatus _$result;
    try {
      _$result = _$v ??
          new _$RemediationExecutionStatus._(
              resourceKey: _resourceKey?.build(),
              state: state,
              stepDetails: _stepDetails?.build(),
              invocationTime: invocationTime,
              lastUpdatedTime: lastUpdatedTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceKey';
        _resourceKey?.build();

        _$failedField = 'stepDetails';
        _stepDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RemediationExecutionStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
