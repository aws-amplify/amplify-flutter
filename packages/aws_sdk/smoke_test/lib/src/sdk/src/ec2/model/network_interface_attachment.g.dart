// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_interface_attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfaceAttachment extends NetworkInterfaceAttachment {
  @override
  final DateTime? attachTime;
  @override
  final String? attachmentId;
  @override
  final bool deleteOnTermination;
  @override
  final int deviceIndex;
  @override
  final int networkCardIndex;
  @override
  final String? instanceId;
  @override
  final String? instanceOwnerId;
  @override
  final AttachmentStatus? status;
  @override
  final AttachmentEnaSrdSpecification? enaSrdSpecification;

  factory _$NetworkInterfaceAttachment(
          [void Function(NetworkInterfaceAttachmentBuilder)? updates]) =>
      (new NetworkInterfaceAttachmentBuilder()..update(updates))._build();

  _$NetworkInterfaceAttachment._(
      {this.attachTime,
      this.attachmentId,
      required this.deleteOnTermination,
      required this.deviceIndex,
      required this.networkCardIndex,
      this.instanceId,
      this.instanceOwnerId,
      this.status,
      this.enaSrdSpecification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deleteOnTermination,
        r'NetworkInterfaceAttachment', 'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(
        deviceIndex, r'NetworkInterfaceAttachment', 'deviceIndex');
    BuiltValueNullFieldError.checkNotNull(
        networkCardIndex, r'NetworkInterfaceAttachment', 'networkCardIndex');
  }

  @override
  NetworkInterfaceAttachment rebuild(
          void Function(NetworkInterfaceAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfaceAttachmentBuilder toBuilder() =>
      new NetworkInterfaceAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfaceAttachment &&
        attachTime == other.attachTime &&
        attachmentId == other.attachmentId &&
        deleteOnTermination == other.deleteOnTermination &&
        deviceIndex == other.deviceIndex &&
        networkCardIndex == other.networkCardIndex &&
        instanceId == other.instanceId &&
        instanceOwnerId == other.instanceOwnerId &&
        status == other.status &&
        enaSrdSpecification == other.enaSrdSpecification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachTime.hashCode);
    _$hash = $jc(_$hash, attachmentId.hashCode);
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, deviceIndex.hashCode);
    _$hash = $jc(_$hash, networkCardIndex.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceOwnerId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, enaSrdSpecification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfaceAttachmentBuilder
    implements
        Builder<NetworkInterfaceAttachment, NetworkInterfaceAttachmentBuilder> {
  _$NetworkInterfaceAttachment? _$v;

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

  int? _networkCardIndex;
  int? get networkCardIndex => _$this._networkCardIndex;
  set networkCardIndex(int? networkCardIndex) =>
      _$this._networkCardIndex = networkCardIndex;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _instanceOwnerId;
  String? get instanceOwnerId => _$this._instanceOwnerId;
  set instanceOwnerId(String? instanceOwnerId) =>
      _$this._instanceOwnerId = instanceOwnerId;

  AttachmentStatus? _status;
  AttachmentStatus? get status => _$this._status;
  set status(AttachmentStatus? status) => _$this._status = status;

  AttachmentEnaSrdSpecificationBuilder? _enaSrdSpecification;
  AttachmentEnaSrdSpecificationBuilder get enaSrdSpecification =>
      _$this._enaSrdSpecification ??=
          new AttachmentEnaSrdSpecificationBuilder();
  set enaSrdSpecification(
          AttachmentEnaSrdSpecificationBuilder? enaSrdSpecification) =>
      _$this._enaSrdSpecification = enaSrdSpecification;

  NetworkInterfaceAttachmentBuilder() {
    NetworkInterfaceAttachment._init(this);
  }

  NetworkInterfaceAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachTime = $v.attachTime;
      _attachmentId = $v.attachmentId;
      _deleteOnTermination = $v.deleteOnTermination;
      _deviceIndex = $v.deviceIndex;
      _networkCardIndex = $v.networkCardIndex;
      _instanceId = $v.instanceId;
      _instanceOwnerId = $v.instanceOwnerId;
      _status = $v.status;
      _enaSrdSpecification = $v.enaSrdSpecification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfaceAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfaceAttachment;
  }

  @override
  void update(void Function(NetworkInterfaceAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfaceAttachment build() => _build();

  _$NetworkInterfaceAttachment _build() {
    _$NetworkInterfaceAttachment _$result;
    try {
      _$result = _$v ??
          new _$NetworkInterfaceAttachment._(
              attachTime: attachTime,
              attachmentId: attachmentId,
              deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                  deleteOnTermination,
                  r'NetworkInterfaceAttachment',
                  'deleteOnTermination'),
              deviceIndex: BuiltValueNullFieldError.checkNotNull(
                  deviceIndex, r'NetworkInterfaceAttachment', 'deviceIndex'),
              networkCardIndex: BuiltValueNullFieldError.checkNotNull(
                  networkCardIndex,
                  r'NetworkInterfaceAttachment',
                  'networkCardIndex'),
              instanceId: instanceId,
              instanceOwnerId: instanceOwnerId,
              status: status,
              enaSrdSpecification: _enaSrdSpecification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enaSrdSpecification';
        _enaSrdSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInterfaceAttachment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
