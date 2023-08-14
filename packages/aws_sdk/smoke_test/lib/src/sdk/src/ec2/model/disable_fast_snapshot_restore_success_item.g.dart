// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_fast_snapshot_restore_success_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableFastSnapshotRestoreSuccessItem
    extends DisableFastSnapshotRestoreSuccessItem {
  @override
  final String? snapshotId;
  @override
  final String? availabilityZone;
  @override
  final FastSnapshotRestoreStateCode? state;
  @override
  final String? stateTransitionReason;
  @override
  final String? ownerId;
  @override
  final String? ownerAlias;
  @override
  final DateTime? enablingTime;
  @override
  final DateTime? optimizingTime;
  @override
  final DateTime? enabledTime;
  @override
  final DateTime? disablingTime;
  @override
  final DateTime? disabledTime;

  factory _$DisableFastSnapshotRestoreSuccessItem(
          [void Function(DisableFastSnapshotRestoreSuccessItemBuilder)?
              updates]) =>
      (new DisableFastSnapshotRestoreSuccessItemBuilder()..update(updates))
          ._build();

  _$DisableFastSnapshotRestoreSuccessItem._(
      {this.snapshotId,
      this.availabilityZone,
      this.state,
      this.stateTransitionReason,
      this.ownerId,
      this.ownerAlias,
      this.enablingTime,
      this.optimizingTime,
      this.enabledTime,
      this.disablingTime,
      this.disabledTime})
      : super._();

  @override
  DisableFastSnapshotRestoreSuccessItem rebuild(
          void Function(DisableFastSnapshotRestoreSuccessItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableFastSnapshotRestoreSuccessItemBuilder toBuilder() =>
      new DisableFastSnapshotRestoreSuccessItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableFastSnapshotRestoreSuccessItem &&
        snapshotId == other.snapshotId &&
        availabilityZone == other.availabilityZone &&
        state == other.state &&
        stateTransitionReason == other.stateTransitionReason &&
        ownerId == other.ownerId &&
        ownerAlias == other.ownerAlias &&
        enablingTime == other.enablingTime &&
        optimizingTime == other.optimizingTime &&
        enabledTime == other.enabledTime &&
        disablingTime == other.disablingTime &&
        disabledTime == other.disabledTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateTransitionReason.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, ownerAlias.hashCode);
    _$hash = $jc(_$hash, enablingTime.hashCode);
    _$hash = $jc(_$hash, optimizingTime.hashCode);
    _$hash = $jc(_$hash, enabledTime.hashCode);
    _$hash = $jc(_$hash, disablingTime.hashCode);
    _$hash = $jc(_$hash, disabledTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableFastSnapshotRestoreSuccessItemBuilder
    implements
        Builder<DisableFastSnapshotRestoreSuccessItem,
            DisableFastSnapshotRestoreSuccessItemBuilder> {
  _$DisableFastSnapshotRestoreSuccessItem? _$v;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  FastSnapshotRestoreStateCode? _state;
  FastSnapshotRestoreStateCode? get state => _$this._state;
  set state(FastSnapshotRestoreStateCode? state) => _$this._state = state;

  String? _stateTransitionReason;
  String? get stateTransitionReason => _$this._stateTransitionReason;
  set stateTransitionReason(String? stateTransitionReason) =>
      _$this._stateTransitionReason = stateTransitionReason;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _ownerAlias;
  String? get ownerAlias => _$this._ownerAlias;
  set ownerAlias(String? ownerAlias) => _$this._ownerAlias = ownerAlias;

  DateTime? _enablingTime;
  DateTime? get enablingTime => _$this._enablingTime;
  set enablingTime(DateTime? enablingTime) =>
      _$this._enablingTime = enablingTime;

  DateTime? _optimizingTime;
  DateTime? get optimizingTime => _$this._optimizingTime;
  set optimizingTime(DateTime? optimizingTime) =>
      _$this._optimizingTime = optimizingTime;

  DateTime? _enabledTime;
  DateTime? get enabledTime => _$this._enabledTime;
  set enabledTime(DateTime? enabledTime) => _$this._enabledTime = enabledTime;

  DateTime? _disablingTime;
  DateTime? get disablingTime => _$this._disablingTime;
  set disablingTime(DateTime? disablingTime) =>
      _$this._disablingTime = disablingTime;

  DateTime? _disabledTime;
  DateTime? get disabledTime => _$this._disabledTime;
  set disabledTime(DateTime? disabledTime) =>
      _$this._disabledTime = disabledTime;

  DisableFastSnapshotRestoreSuccessItemBuilder();

  DisableFastSnapshotRestoreSuccessItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotId = $v.snapshotId;
      _availabilityZone = $v.availabilityZone;
      _state = $v.state;
      _stateTransitionReason = $v.stateTransitionReason;
      _ownerId = $v.ownerId;
      _ownerAlias = $v.ownerAlias;
      _enablingTime = $v.enablingTime;
      _optimizingTime = $v.optimizingTime;
      _enabledTime = $v.enabledTime;
      _disablingTime = $v.disablingTime;
      _disabledTime = $v.disabledTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableFastSnapshotRestoreSuccessItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableFastSnapshotRestoreSuccessItem;
  }

  @override
  void update(
      void Function(DisableFastSnapshotRestoreSuccessItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableFastSnapshotRestoreSuccessItem build() => _build();

  _$DisableFastSnapshotRestoreSuccessItem _build() {
    final _$result = _$v ??
        new _$DisableFastSnapshotRestoreSuccessItem._(
            snapshotId: snapshotId,
            availabilityZone: availabilityZone,
            state: state,
            stateTransitionReason: stateTransitionReason,
            ownerId: ownerId,
            ownerAlias: ownerAlias,
            enablingTime: enablingTime,
            optimizingTime: optimizingTime,
            enabledTime: enabledTime,
            disablingTime: disablingTime,
            disabledTime: disabledTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
