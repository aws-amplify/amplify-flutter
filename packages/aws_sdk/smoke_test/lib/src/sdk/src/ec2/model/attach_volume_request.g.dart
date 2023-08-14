// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_volume_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachVolumeRequest extends AttachVolumeRequest {
  @override
  final String? device;
  @override
  final String? instanceId;
  @override
  final String? volumeId;
  @override
  final bool dryRun;

  factory _$AttachVolumeRequest(
          [void Function(AttachVolumeRequestBuilder)? updates]) =>
      (new AttachVolumeRequestBuilder()..update(updates))._build();

  _$AttachVolumeRequest._(
      {this.device, this.instanceId, this.volumeId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AttachVolumeRequest', 'dryRun');
  }

  @override
  AttachVolumeRequest rebuild(
          void Function(AttachVolumeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachVolumeRequestBuilder toBuilder() =>
      new AttachVolumeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachVolumeRequest &&
        device == other.device &&
        instanceId == other.instanceId &&
        volumeId == other.volumeId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachVolumeRequestBuilder
    implements Builder<AttachVolumeRequest, AttachVolumeRequestBuilder> {
  _$AttachVolumeRequest? _$v;

  String? _device;
  String? get device => _$this._device;
  set device(String? device) => _$this._device = device;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AttachVolumeRequestBuilder() {
    AttachVolumeRequest._init(this);
  }

  AttachVolumeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _device = $v.device;
      _instanceId = $v.instanceId;
      _volumeId = $v.volumeId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachVolumeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachVolumeRequest;
  }

  @override
  void update(void Function(AttachVolumeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachVolumeRequest build() => _build();

  _$AttachVolumeRequest _build() {
    final _$result = _$v ??
        new _$AttachVolumeRequest._(
            device: device,
            instanceId: instanceId,
            volumeId: volumeId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AttachVolumeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
