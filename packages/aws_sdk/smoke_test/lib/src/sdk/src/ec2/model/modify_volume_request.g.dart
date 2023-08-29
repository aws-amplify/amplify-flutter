// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_volume_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVolumeRequest extends ModifyVolumeRequest {
  @override
  final bool dryRun;
  @override
  final String? volumeId;
  @override
  final int size;
  @override
  final VolumeType? volumeType;
  @override
  final int iops;
  @override
  final int throughput;
  @override
  final bool multiAttachEnabled;

  factory _$ModifyVolumeRequest(
          [void Function(ModifyVolumeRequestBuilder)? updates]) =>
      (new ModifyVolumeRequestBuilder()..update(updates))._build();

  _$ModifyVolumeRequest._(
      {required this.dryRun,
      this.volumeId,
      required this.size,
      this.volumeType,
      required this.iops,
      required this.throughput,
      required this.multiAttachEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVolumeRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(size, r'ModifyVolumeRequest', 'size');
    BuiltValueNullFieldError.checkNotNull(iops, r'ModifyVolumeRequest', 'iops');
    BuiltValueNullFieldError.checkNotNull(
        throughput, r'ModifyVolumeRequest', 'throughput');
    BuiltValueNullFieldError.checkNotNull(
        multiAttachEnabled, r'ModifyVolumeRequest', 'multiAttachEnabled');
  }

  @override
  ModifyVolumeRequest rebuild(
          void Function(ModifyVolumeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVolumeRequestBuilder toBuilder() =>
      new ModifyVolumeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVolumeRequest &&
        dryRun == other.dryRun &&
        volumeId == other.volumeId &&
        size == other.size &&
        volumeType == other.volumeType &&
        iops == other.iops &&
        throughput == other.throughput &&
        multiAttachEnabled == other.multiAttachEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, volumeType.hashCode);
    _$hash = $jc(_$hash, iops.hashCode);
    _$hash = $jc(_$hash, throughput.hashCode);
    _$hash = $jc(_$hash, multiAttachEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVolumeRequestBuilder
    implements Builder<ModifyVolumeRequest, ModifyVolumeRequestBuilder> {
  _$ModifyVolumeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  VolumeType? _volumeType;
  VolumeType? get volumeType => _$this._volumeType;
  set volumeType(VolumeType? volumeType) => _$this._volumeType = volumeType;

  int? _iops;
  int? get iops => _$this._iops;
  set iops(int? iops) => _$this._iops = iops;

  int? _throughput;
  int? get throughput => _$this._throughput;
  set throughput(int? throughput) => _$this._throughput = throughput;

  bool? _multiAttachEnabled;
  bool? get multiAttachEnabled => _$this._multiAttachEnabled;
  set multiAttachEnabled(bool? multiAttachEnabled) =>
      _$this._multiAttachEnabled = multiAttachEnabled;

  ModifyVolumeRequestBuilder() {
    ModifyVolumeRequest._init(this);
  }

  ModifyVolumeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _volumeId = $v.volumeId;
      _size = $v.size;
      _volumeType = $v.volumeType;
      _iops = $v.iops;
      _throughput = $v.throughput;
      _multiAttachEnabled = $v.multiAttachEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVolumeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVolumeRequest;
  }

  @override
  void update(void Function(ModifyVolumeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVolumeRequest build() => _build();

  _$ModifyVolumeRequest _build() {
    final _$result = _$v ??
        new _$ModifyVolumeRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyVolumeRequest', 'dryRun'),
            volumeId: volumeId,
            size: BuiltValueNullFieldError.checkNotNull(
                size, r'ModifyVolumeRequest', 'size'),
            volumeType: volumeType,
            iops: BuiltValueNullFieldError.checkNotNull(
                iops, r'ModifyVolumeRequest', 'iops'),
            throughput: BuiltValueNullFieldError.checkNotNull(
                throughput, r'ModifyVolumeRequest', 'throughput'),
            multiAttachEnabled: BuiltValueNullFieldError.checkNotNull(
                multiAttachEnabled,
                r'ModifyVolumeRequest',
                'multiAttachEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
