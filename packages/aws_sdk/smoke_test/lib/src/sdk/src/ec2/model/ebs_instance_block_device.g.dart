// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebs_instance_block_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EbsInstanceBlockDevice extends EbsInstanceBlockDevice {
  @override
  final DateTime? attachTime;
  @override
  final bool deleteOnTermination;
  @override
  final AttachmentStatus? status;
  @override
  final String? volumeId;

  factory _$EbsInstanceBlockDevice(
          [void Function(EbsInstanceBlockDeviceBuilder)? updates]) =>
      (new EbsInstanceBlockDeviceBuilder()..update(updates))._build();

  _$EbsInstanceBlockDevice._(
      {this.attachTime,
      required this.deleteOnTermination,
      this.status,
      this.volumeId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deleteOnTermination, r'EbsInstanceBlockDevice', 'deleteOnTermination');
  }

  @override
  EbsInstanceBlockDevice rebuild(
          void Function(EbsInstanceBlockDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EbsInstanceBlockDeviceBuilder toBuilder() =>
      new EbsInstanceBlockDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EbsInstanceBlockDevice &&
        attachTime == other.attachTime &&
        deleteOnTermination == other.deleteOnTermination &&
        status == other.status &&
        volumeId == other.volumeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachTime.hashCode);
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EbsInstanceBlockDeviceBuilder
    implements Builder<EbsInstanceBlockDevice, EbsInstanceBlockDeviceBuilder> {
  _$EbsInstanceBlockDevice? _$v;

  DateTime? _attachTime;
  DateTime? get attachTime => _$this._attachTime;
  set attachTime(DateTime? attachTime) => _$this._attachTime = attachTime;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  AttachmentStatus? _status;
  AttachmentStatus? get status => _$this._status;
  set status(AttachmentStatus? status) => _$this._status = status;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  EbsInstanceBlockDeviceBuilder() {
    EbsInstanceBlockDevice._init(this);
  }

  EbsInstanceBlockDeviceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachTime = $v.attachTime;
      _deleteOnTermination = $v.deleteOnTermination;
      _status = $v.status;
      _volumeId = $v.volumeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EbsInstanceBlockDevice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EbsInstanceBlockDevice;
  }

  @override
  void update(void Function(EbsInstanceBlockDeviceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EbsInstanceBlockDevice build() => _build();

  _$EbsInstanceBlockDevice _build() {
    final _$result = _$v ??
        new _$EbsInstanceBlockDevice._(
            attachTime: attachTime,
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination,
                r'EbsInstanceBlockDevice',
                'deleteOnTermination'),
            status: status,
            volumeId: volumeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
