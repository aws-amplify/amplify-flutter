// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_status_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeStatusItem extends VolumeStatusItem {
  @override
  final _i2.BuiltList<VolumeStatusAction>? actions;
  @override
  final String? availabilityZone;
  @override
  final String? outpostArn;
  @override
  final _i2.BuiltList<VolumeStatusEvent>? events;
  @override
  final String? volumeId;
  @override
  final VolumeStatusInfo? volumeStatus;
  @override
  final _i2.BuiltList<VolumeStatusAttachmentStatus>? attachmentStatuses;

  factory _$VolumeStatusItem(
          [void Function(VolumeStatusItemBuilder)? updates]) =>
      (new VolumeStatusItemBuilder()..update(updates))._build();

  _$VolumeStatusItem._(
      {this.actions,
      this.availabilityZone,
      this.outpostArn,
      this.events,
      this.volumeId,
      this.volumeStatus,
      this.attachmentStatuses})
      : super._();

  @override
  VolumeStatusItem rebuild(void Function(VolumeStatusItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeStatusItemBuilder toBuilder() =>
      new VolumeStatusItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeStatusItem &&
        actions == other.actions &&
        availabilityZone == other.availabilityZone &&
        outpostArn == other.outpostArn &&
        events == other.events &&
        volumeId == other.volumeId &&
        volumeStatus == other.volumeStatus &&
        attachmentStatuses == other.attachmentStatuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, volumeStatus.hashCode);
    _$hash = $jc(_$hash, attachmentStatuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeStatusItemBuilder
    implements Builder<VolumeStatusItem, VolumeStatusItemBuilder> {
  _$VolumeStatusItem? _$v;

  _i2.ListBuilder<VolumeStatusAction>? _actions;
  _i2.ListBuilder<VolumeStatusAction> get actions =>
      _$this._actions ??= new _i2.ListBuilder<VolumeStatusAction>();
  set actions(_i2.ListBuilder<VolumeStatusAction>? actions) =>
      _$this._actions = actions;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  _i2.ListBuilder<VolumeStatusEvent>? _events;
  _i2.ListBuilder<VolumeStatusEvent> get events =>
      _$this._events ??= new _i2.ListBuilder<VolumeStatusEvent>();
  set events(_i2.ListBuilder<VolumeStatusEvent>? events) =>
      _$this._events = events;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  VolumeStatusInfoBuilder? _volumeStatus;
  VolumeStatusInfoBuilder get volumeStatus =>
      _$this._volumeStatus ??= new VolumeStatusInfoBuilder();
  set volumeStatus(VolumeStatusInfoBuilder? volumeStatus) =>
      _$this._volumeStatus = volumeStatus;

  _i2.ListBuilder<VolumeStatusAttachmentStatus>? _attachmentStatuses;
  _i2.ListBuilder<VolumeStatusAttachmentStatus> get attachmentStatuses =>
      _$this._attachmentStatuses ??=
          new _i2.ListBuilder<VolumeStatusAttachmentStatus>();
  set attachmentStatuses(
          _i2.ListBuilder<VolumeStatusAttachmentStatus>? attachmentStatuses) =>
      _$this._attachmentStatuses = attachmentStatuses;

  VolumeStatusItemBuilder();

  VolumeStatusItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actions = $v.actions?.toBuilder();
      _availabilityZone = $v.availabilityZone;
      _outpostArn = $v.outpostArn;
      _events = $v.events?.toBuilder();
      _volumeId = $v.volumeId;
      _volumeStatus = $v.volumeStatus?.toBuilder();
      _attachmentStatuses = $v.attachmentStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeStatusItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeStatusItem;
  }

  @override
  void update(void Function(VolumeStatusItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeStatusItem build() => _build();

  _$VolumeStatusItem _build() {
    _$VolumeStatusItem _$result;
    try {
      _$result = _$v ??
          new _$VolumeStatusItem._(
              actions: _actions?.build(),
              availabilityZone: availabilityZone,
              outpostArn: outpostArn,
              events: _events?.build(),
              volumeId: volumeId,
              volumeStatus: _volumeStatus?.build(),
              attachmentStatuses: _attachmentStatuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actions';
        _actions?.build();

        _$failedField = 'events';
        _events?.build();

        _$failedField = 'volumeStatus';
        _volumeStatus?.build();
        _$failedField = 'attachmentStatuses';
        _attachmentStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VolumeStatusItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
