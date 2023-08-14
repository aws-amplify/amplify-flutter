// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_network_interface_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceNetworkInterfaceAttachment
    extends InstanceNetworkInterfaceAttachment {
  @override
  final DateTime? attachTime;
  @override
  final String? attachmentId;
  @override
  final bool deleteOnTermination;
  @override
  final int deviceIndex;
  @override
  final AttachmentStatus? status;
  @override
  final int networkCardIndex;

  factory _$InstanceNetworkInterfaceAttachment(
          [void Function(InstanceNetworkInterfaceAttachmentBuilder)?
              updates]) =>
      (new InstanceNetworkInterfaceAttachmentBuilder()..update(updates))
          ._build();

  _$InstanceNetworkInterfaceAttachment._(
      {this.attachTime,
      this.attachmentId,
      required this.deleteOnTermination,
      required this.deviceIndex,
      this.status,
      required this.networkCardIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deleteOnTermination,
        r'InstanceNetworkInterfaceAttachment', 'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(
        deviceIndex, r'InstanceNetworkInterfaceAttachment', 'deviceIndex');
    BuiltValueNullFieldError.checkNotNull(networkCardIndex,
        r'InstanceNetworkInterfaceAttachment', 'networkCardIndex');
  }

  @override
  InstanceNetworkInterfaceAttachment rebuild(
          void Function(InstanceNetworkInterfaceAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceNetworkInterfaceAttachmentBuilder toBuilder() =>
      new InstanceNetworkInterfaceAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceNetworkInterfaceAttachment &&
        attachTime == other.attachTime &&
        attachmentId == other.attachmentId &&
        deleteOnTermination == other.deleteOnTermination &&
        deviceIndex == other.deviceIndex &&
        status == other.status &&
        networkCardIndex == other.networkCardIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachTime.hashCode);
    _$hash = $jc(_$hash, attachmentId.hashCode);
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, deviceIndex.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, networkCardIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceNetworkInterfaceAttachmentBuilder
    implements
        Builder<InstanceNetworkInterfaceAttachment,
            InstanceNetworkInterfaceAttachmentBuilder> {
  _$InstanceNetworkInterfaceAttachment? _$v;

  DateTime? _attachTime;
  DateTime? get attachTime => _$this._attachTime;
  set attachTime(DateTime? attachTime) => _$this._attachTime = attachTime;

  String? _attachmentId;
  String? get attachmentId => _$this._attachmentId;
  set attachmentId(String? attachmentId) => _$this._attachmentId = attachmentId;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  int? _deviceIndex;
  int? get deviceIndex => _$this._deviceIndex;
  set deviceIndex(int? deviceIndex) => _$this._deviceIndex = deviceIndex;

  AttachmentStatus? _status;
  AttachmentStatus? get status => _$this._status;
  set status(AttachmentStatus? status) => _$this._status = status;

  int? _networkCardIndex;
  int? get networkCardIndex => _$this._networkCardIndex;
  set networkCardIndex(int? networkCardIndex) =>
      _$this._networkCardIndex = networkCardIndex;

  InstanceNetworkInterfaceAttachmentBuilder() {
    InstanceNetworkInterfaceAttachment._init(this);
  }

  InstanceNetworkInterfaceAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachTime = $v.attachTime;
      _attachmentId = $v.attachmentId;
      _deleteOnTermination = $v.deleteOnTermination;
      _deviceIndex = $v.deviceIndex;
      _status = $v.status;
      _networkCardIndex = $v.networkCardIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceNetworkInterfaceAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceNetworkInterfaceAttachment;
  }

  @override
  void update(
      void Function(InstanceNetworkInterfaceAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceNetworkInterfaceAttachment build() => _build();

  _$InstanceNetworkInterfaceAttachment _build() {
    final _$result = _$v ??
        new _$InstanceNetworkInterfaceAttachment._(
            attachTime: attachTime,
            attachmentId: attachmentId,
            deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                deleteOnTermination,
                r'InstanceNetworkInterfaceAttachment',
                'deleteOnTermination'),
            deviceIndex: BuiltValueNullFieldError.checkNotNull(deviceIndex,
                r'InstanceNetworkInterfaceAttachment', 'deviceIndex'),
            status: status,
            networkCardIndex: BuiltValueNullFieldError.checkNotNull(
                networkCardIndex,
                r'InstanceNetworkInterfaceAttachment',
                'networkCardIndex'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
