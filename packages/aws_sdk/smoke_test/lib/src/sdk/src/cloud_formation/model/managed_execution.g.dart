// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.managed_execution;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ManagedExecution extends ManagedExecution {
  @override
  final bool? active;

  factory _$ManagedExecution(
          [void Function(ManagedExecutionBuilder)? updates]) =>
      (new ManagedExecutionBuilder()..update(updates))._build();

  _$ManagedExecution._({this.active}) : super._();

  @override
  ManagedExecution rebuild(void Function(ManagedExecutionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManagedExecutionBuilder toBuilder() =>
      new ManagedExecutionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManagedExecution && active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ManagedExecutionBuilder
    implements Builder<ManagedExecution, ManagedExecutionBuilder> {
  _$ManagedExecution? _$v;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  ManagedExecutionBuilder() {
    ManagedExecution._init(this);
  }

  ManagedExecutionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManagedExecution other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ManagedExecution;
  }

  @override
  void update(void Function(ManagedExecutionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ManagedExecution build() => _build();

  _$ManagedExecution _build() {
    final _$result = _$v ?? new _$ManagedExecution._(active: active);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
