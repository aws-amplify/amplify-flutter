// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_state_change.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceStateChange extends InstanceStateChange {
  @override
  final InstanceState? currentState;
  @override
  final String? instanceId;
  @override
  final InstanceState? previousState;

  factory _$InstanceStateChange(
          [void Function(InstanceStateChangeBuilder)? updates]) =>
      (new InstanceStateChangeBuilder()..update(updates))._build();

  _$InstanceStateChange._(
      {this.currentState, this.instanceId, this.previousState})
      : super._();

  @override
  InstanceStateChange rebuild(
          void Function(InstanceStateChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceStateChangeBuilder toBuilder() =>
      new InstanceStateChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceStateChange &&
        currentState == other.currentState &&
        instanceId == other.instanceId &&
        previousState == other.previousState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentState.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, previousState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceStateChangeBuilder
    implements Builder<InstanceStateChange, InstanceStateChangeBuilder> {
  _$InstanceStateChange? _$v;

  InstanceStateBuilder? _currentState;
  InstanceStateBuilder get currentState =>
      _$this._currentState ??= new InstanceStateBuilder();
  set currentState(InstanceStateBuilder? currentState) =>
      _$this._currentState = currentState;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  InstanceStateBuilder? _previousState;
  InstanceStateBuilder get previousState =>
      _$this._previousState ??= new InstanceStateBuilder();
  set previousState(InstanceStateBuilder? previousState) =>
      _$this._previousState = previousState;

  InstanceStateChangeBuilder();

  InstanceStateChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentState = $v.currentState?.toBuilder();
      _instanceId = $v.instanceId;
      _previousState = $v.previousState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceStateChange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceStateChange;
  }

  @override
  void update(void Function(InstanceStateChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceStateChange build() => _build();

  _$InstanceStateChange _build() {
    _$InstanceStateChange _$result;
    try {
      _$result = _$v ??
          new _$InstanceStateChange._(
              currentState: _currentState?.build(),
              instanceId: instanceId,
              previousState: _previousState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentState';
        _currentState?.build();

        _$failedField = 'previousState';
        _previousState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceStateChange', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
