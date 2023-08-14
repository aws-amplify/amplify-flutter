// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detach_volume_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachVolumeRequest extends DetachVolumeRequest {
  @override
  final String? device;
  @override
  final bool force;
  @override
  final String? instanceId;
  @override
  final String? volumeId;
  @override
  final bool dryRun;

  factory _$DetachVolumeRequest(
          [void Function(DetachVolumeRequestBuilder)? updates]) =>
      (new DetachVolumeRequestBuilder()..update(updates))._build();

  _$DetachVolumeRequest._(
      {this.device,
      required this.force,
      this.instanceId,
      this.volumeId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        force, r'DetachVolumeRequest', 'force');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DetachVolumeRequest', 'dryRun');
  }

  @override
  DetachVolumeRequest rebuild(
          void Function(DetachVolumeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachVolumeRequestBuilder toBuilder() =>
      new DetachVolumeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachVolumeRequest &&
        device == other.device &&
        force == other.force &&
        instanceId == other.instanceId &&
        volumeId == other.volumeId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jc(_$hash, force.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachVolumeRequestBuilder
    implements Builder<DetachVolumeRequest, DetachVolumeRequestBuilder> {
  _$DetachVolumeRequest? _$v;

  String? _device;
  String? get device => _$this._device;
  set device(String? device) => _$this._device = device;

  bool? _force;
  bool? get force => _$this._force;
  set force(bool? force) => _$this._force = force;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DetachVolumeRequestBuilder() {
    DetachVolumeRequest._init(this);
  }

  DetachVolumeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _device = $v.device;
      _force = $v.force;
      _instanceId = $v.instanceId;
      _volumeId = $v.volumeId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachVolumeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachVolumeRequest;
  }

  @override
  void update(void Function(DetachVolumeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachVolumeRequest build() => _build();

  _$DetachVolumeRequest _build() {
    final _$result = _$v ??
        new _$DetachVolumeRequest._(
            device: device,
            force: BuiltValueNullFieldError.checkNotNull(
                force, r'DetachVolumeRequest', 'force'),
            instanceId: instanceId,
            volumeId: volumeId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DetachVolumeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
