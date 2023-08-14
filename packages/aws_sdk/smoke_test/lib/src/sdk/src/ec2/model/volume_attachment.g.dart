// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeAttachment extends VolumeAttachment {
  @override
  final DateTime? attachTime;
  @override
  final String? device;
  @override
  final String? instanceId;
  @override
  final VolumeAttachmentState? state;
  @override
  final String? volumeId;
  @override
  final bool deleteOnTermination;

  factory _$VolumeAttachment(
          [void Function(VolumeAttachmentBuilder)? updates]) =>
      (new VolumeAttachmentBuilder()..update(updates))._build();

  _$VolumeAttachment._(
      {this.attachTime,
      this.device,
      this.instanceId,
      this.state,
      this.volumeId,
      required this.deleteOnTermination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deleteOnTermination, r'VolumeAttachment', 'deleteOnTermination');
  }

  @override
  VolumeAttachment rebuild(void Function(VolumeAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeAttachmentBuilder toBuilder() =>
      new VolumeAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeAttachment &&
        attachTime == other.attachTime &&
        device == other.device &&
        instanceId == other.instanceId &&
        state == other.state &&
        volumeId == other.volumeId &&
        deleteOnTermination == other.deleteOnTermination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachTime.hashCode);
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeAttachmentBuilder
    implements Builder<VolumeAttachment, VolumeAttachmentBuilder> {
  _$VolumeAttachment? _$v;

  DateTime? _attachTime;
  DateTime? get attachTime => _$this._attachTime;
  set attachTime(DateTime? attachTime) => _$this._attachTime = attachTime;

  String? _device;
  String? get device => _$this._device;
  set device(String? device) => _$this._device = device;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  VolumeAttachmentState? _state;
  VolumeAttachmentState? get state => _$this._state;
  set state(VolumeAttachmentState? state) => _$this._state = state;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  VolumeAttachmentBuilder() {
    VolumeAttachment._init(this);
  }

  VolumeAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachTime = $v.attachTime;
      _device = $v.device;
      _instanceId = $v.instanceId;
      _state = $v.state;
      _volumeId = $v.volumeId;
      _deleteOnTermination = $v.deleteOnTermination;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeAttachment;
  }

  @override
  void update(void Function(VolumeAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeAttachment build() => _build();

  _$VolumeAttachment _build() {
    final _$result = _$v ??
        new _$VolumeAttachment._(
            attachTime: attachTime,
            device: device,
            instanceId: instanceId,
            state: state,
            volumeId: volumeId,
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination,
                r'VolumeAttachment',
                'deleteOnTermination'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
