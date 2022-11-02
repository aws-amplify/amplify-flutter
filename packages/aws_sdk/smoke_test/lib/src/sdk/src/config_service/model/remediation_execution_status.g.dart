// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_execution_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationExecutionStatus extends RemediationExecutionStatus {
  @override
  final DateTime? invocationTime;
  @override
  final DateTime? lastUpdatedTime;
  @override
  final _i2.ResourceKey? resourceKey;
  @override
  final _i3.RemediationExecutionState? state;
  @override
  final _i5.BuiltList<_i4.RemediationExecutionStep>? stepDetails;

  factory _$RemediationExecutionStatus(
          [void Function(RemediationExecutionStatusBuilder)? updates]) =>
      (new RemediationExecutionStatusBuilder()..update(updates))._build();

  _$RemediationExecutionStatus._(
      {this.invocationTime,
      this.lastUpdatedTime,
      this.resourceKey,
      this.state,
      this.stepDetails})
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
        invocationTime == other.invocationTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        resourceKey == other.resourceKey &&
        state == other.state &&
        stepDetails == other.stepDetails;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, invocationTime.hashCode), lastUpdatedTime.hashCode),
                resourceKey.hashCode),
            state.hashCode),
        stepDetails.hashCode));
  }
}

class RemediationExecutionStatusBuilder
    implements
        Builder<RemediationExecutionStatus, RemediationExecutionStatusBuilder> {
  _$RemediationExecutionStatus? _$v;

  DateTime? _invocationTime;
  DateTime? get invocationTime => _$this._invocationTime;
  set invocationTime(DateTime? invocationTime) =>
      _$this._invocationTime = invocationTime;

  DateTime? _lastUpdatedTime;
  DateTime? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(DateTime? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  _i2.ResourceKeyBuilder? _resourceKey;
  _i2.ResourceKeyBuilder get resourceKey =>
      _$this._resourceKey ??= new _i2.ResourceKeyBuilder();
  set resourceKey(_i2.ResourceKeyBuilder? resourceKey) =>
      _$this._resourceKey = resourceKey;

  _i3.RemediationExecutionState? _state;
  _i3.RemediationExecutionState? get state => _$this._state;
  set state(_i3.RemediationExecutionState? state) => _$this._state = state;

  _i5.ListBuilder<_i4.RemediationExecutionStep>? _stepDetails;
  _i5.ListBuilder<_i4.RemediationExecutionStep> get stepDetails =>
      _$this._stepDetails ??=
          new _i5.ListBuilder<_i4.RemediationExecutionStep>();
  set stepDetails(_i5.ListBuilder<_i4.RemediationExecutionStep>? stepDetails) =>
      _$this._stepDetails = stepDetails;

  RemediationExecutionStatusBuilder() {
    RemediationExecutionStatus._init(this);
  }

  RemediationExecutionStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _invocationTime = $v.invocationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _resourceKey = $v.resourceKey?.toBuilder();
      _state = $v.state;
      _stepDetails = $v.stepDetails?.toBuilder();
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
              invocationTime: invocationTime,
              lastUpdatedTime: lastUpdatedTime,
              resourceKey: _resourceKey?.build(),
              state: state,
              stepDetails: _stepDetails?.build());
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
