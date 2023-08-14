// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_event_window_state_change.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceEventWindowStateChange extends InstanceEventWindowStateChange {
  @override
  final String? instanceEventWindowId;
  @override
  final InstanceEventWindowState? state;

  factory _$InstanceEventWindowStateChange(
          [void Function(InstanceEventWindowStateChangeBuilder)? updates]) =>
      (new InstanceEventWindowStateChangeBuilder()..update(updates))._build();

  _$InstanceEventWindowStateChange._({this.instanceEventWindowId, this.state})
      : super._();

  @override
  InstanceEventWindowStateChange rebuild(
          void Function(InstanceEventWindowStateChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceEventWindowStateChangeBuilder toBuilder() =>
      new InstanceEventWindowStateChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceEventWindowStateChange &&
        instanceEventWindowId == other.instanceEventWindowId &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceEventWindowId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceEventWindowStateChangeBuilder
    implements
        Builder<InstanceEventWindowStateChange,
            InstanceEventWindowStateChangeBuilder> {
  _$InstanceEventWindowStateChange? _$v;

  String? _instanceEventWindowId;
  String? get instanceEventWindowId => _$this._instanceEventWindowId;
  set instanceEventWindowId(String? instanceEventWindowId) =>
      _$this._instanceEventWindowId = instanceEventWindowId;

  InstanceEventWindowState? _state;
  InstanceEventWindowState? get state => _$this._state;
  set state(InstanceEventWindowState? state) => _$this._state = state;

  InstanceEventWindowStateChangeBuilder();

  InstanceEventWindowStateChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventWindowId = $v.instanceEventWindowId;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceEventWindowStateChange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceEventWindowStateChange;
  }

  @override
  void update(void Function(InstanceEventWindowStateChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceEventWindowStateChange build() => _build();

  _$InstanceEventWindowStateChange _build() {
    final _$result = _$v ??
        new _$InstanceEventWindowStateChange._(
            instanceEventWindowId: instanceEventWindowId, state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
