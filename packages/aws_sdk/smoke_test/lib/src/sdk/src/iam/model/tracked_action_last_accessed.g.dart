// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tracked_action_last_accessed;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackedActionLastAccessed extends TrackedActionLastAccessed {
  @override
  final String? actionName;
  @override
  final String? lastAccessedEntity;
  @override
  final DateTime? lastAccessedTime;
  @override
  final String? lastAccessedRegion;

  factory _$TrackedActionLastAccessed(
          [void Function(TrackedActionLastAccessedBuilder)? updates]) =>
      (new TrackedActionLastAccessedBuilder()..update(updates))._build();

  _$TrackedActionLastAccessed._(
      {this.actionName,
      this.lastAccessedEntity,
      this.lastAccessedTime,
      this.lastAccessedRegion})
      : super._();

  @override
  TrackedActionLastAccessed rebuild(
          void Function(TrackedActionLastAccessedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackedActionLastAccessedBuilder toBuilder() =>
      new TrackedActionLastAccessedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackedActionLastAccessed &&
        actionName == other.actionName &&
        lastAccessedEntity == other.lastAccessedEntity &&
        lastAccessedTime == other.lastAccessedTime &&
        lastAccessedRegion == other.lastAccessedRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actionName.hashCode);
    _$hash = $jc(_$hash, lastAccessedEntity.hashCode);
    _$hash = $jc(_$hash, lastAccessedTime.hashCode);
    _$hash = $jc(_$hash, lastAccessedRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TrackedActionLastAccessedBuilder
    implements
        Builder<TrackedActionLastAccessed, TrackedActionLastAccessedBuilder> {
  _$TrackedActionLastAccessed? _$v;

  String? _actionName;
  String? get actionName => _$this._actionName;
  set actionName(String? actionName) => _$this._actionName = actionName;

  String? _lastAccessedEntity;
  String? get lastAccessedEntity => _$this._lastAccessedEntity;
  set lastAccessedEntity(String? lastAccessedEntity) =>
      _$this._lastAccessedEntity = lastAccessedEntity;

  DateTime? _lastAccessedTime;
  DateTime? get lastAccessedTime => _$this._lastAccessedTime;
  set lastAccessedTime(DateTime? lastAccessedTime) =>
      _$this._lastAccessedTime = lastAccessedTime;

  String? _lastAccessedRegion;
  String? get lastAccessedRegion => _$this._lastAccessedRegion;
  set lastAccessedRegion(String? lastAccessedRegion) =>
      _$this._lastAccessedRegion = lastAccessedRegion;

  TrackedActionLastAccessedBuilder() {
    TrackedActionLastAccessed._init(this);
  }

  TrackedActionLastAccessedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actionName = $v.actionName;
      _lastAccessedEntity = $v.lastAccessedEntity;
      _lastAccessedTime = $v.lastAccessedTime;
      _lastAccessedRegion = $v.lastAccessedRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackedActionLastAccessed other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackedActionLastAccessed;
  }

  @override
  void update(void Function(TrackedActionLastAccessedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackedActionLastAccessed build() => _build();

  _$TrackedActionLastAccessed _build() {
    final _$result = _$v ??
        new _$TrackedActionLastAccessed._(
            actionName: actionName,
            lastAccessedEntity: lastAccessedEntity,
            lastAccessedTime: lastAccessedTime,
            lastAccessedRegion: lastAccessedRegion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
