// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_volume_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVolumeRequest extends CreateVolumeRequest {
  @override
  final String? availabilityZone;
  @override
  final bool encrypted;
  @override
  final int iops;
  @override
  final String? kmsKeyId;
  @override
  final String? outpostArn;
  @override
  final int size;
  @override
  final String? snapshotId;
  @override
  final VolumeType? volumeType;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool multiAttachEnabled;
  @override
  final int throughput;
  @override
  final String? clientToken;

  factory _$CreateVolumeRequest(
          [void Function(CreateVolumeRequestBuilder)? updates]) =>
      (new CreateVolumeRequestBuilder()..update(updates))._build();

  _$CreateVolumeRequest._(
      {this.availabilityZone,
      required this.encrypted,
      required this.iops,
      this.kmsKeyId,
      this.outpostArn,
      required this.size,
      this.snapshotId,
      this.volumeType,
      required this.dryRun,
      this.tagSpecifications,
      required this.multiAttachEnabled,
      required this.throughput,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'CreateVolumeRequest', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(iops, r'CreateVolumeRequest', 'iops');
    BuiltValueNullFieldError.checkNotNull(size, r'CreateVolumeRequest', 'size');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVolumeRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        multiAttachEnabled, r'CreateVolumeRequest', 'multiAttachEnabled');
    BuiltValueNullFieldError.checkNotNull(
        throughput, r'CreateVolumeRequest', 'throughput');
  }

  @override
  CreateVolumeRequest rebuild(
          void Function(CreateVolumeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVolumeRequestBuilder toBuilder() =>
      new CreateVolumeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVolumeRequest &&
        availabilityZone == other.availabilityZone &&
        encrypted == other.encrypted &&
        iops == other.iops &&
        kmsKeyId == other.kmsKeyId &&
        outpostArn == other.outpostArn &&
        size == other.size &&
        snapshotId == other.snapshotId &&
        volumeType == other.volumeType &&
        dryRun == other.dryRun &&
        tagSpecifications == other.tagSpecifications &&
        multiAttachEnabled == other.multiAttachEnabled &&
        throughput == other.throughput &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, iops.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, volumeType.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, multiAttachEnabled.hashCode);
    _$hash = $jc(_$hash, throughput.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVolumeRequestBuilder
    implements Builder<CreateVolumeRequest, CreateVolumeRequestBuilder> {
  _$CreateVolumeRequest? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  int? _iops;
  int? get iops => _$this._iops;
  set iops(int? iops) => _$this._iops = iops;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  VolumeType? _volumeType;
  VolumeType? get volumeType => _$this._volumeType;
  set volumeType(VolumeType? volumeType) => _$this._volumeType = volumeType;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _multiAttachEnabled;
  bool? get multiAttachEnabled => _$this._multiAttachEnabled;
  set multiAttachEnabled(bool? multiAttachEnabled) =>
      _$this._multiAttachEnabled = multiAttachEnabled;

  int? _throughput;
  int? get throughput => _$this._throughput;
  set throughput(int? throughput) => _$this._throughput = throughput;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateVolumeRequestBuilder() {
    CreateVolumeRequest._init(this);
  }

  CreateVolumeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _encrypted = $v.encrypted;
      _iops = $v.iops;
      _kmsKeyId = $v.kmsKeyId;
      _outpostArn = $v.outpostArn;
      _size = $v.size;
      _snapshotId = $v.snapshotId;
      _volumeType = $v.volumeType;
      _dryRun = $v.dryRun;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _multiAttachEnabled = $v.multiAttachEnabled;
      _throughput = $v.throughput;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVolumeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVolumeRequest;
  }

  @override
  void update(void Function(CreateVolumeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVolumeRequest build() => _build();

  _$CreateVolumeRequest _build() {
    _$CreateVolumeRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVolumeRequest._(
              availabilityZone: availabilityZone,
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'CreateVolumeRequest', 'encrypted'),
              iops: BuiltValueNullFieldError.checkNotNull(
                  iops, r'CreateVolumeRequest', 'iops'),
              kmsKeyId: kmsKeyId,
              outpostArn: outpostArn,
              size: BuiltValueNullFieldError.checkNotNull(
                  size, r'CreateVolumeRequest', 'size'),
              snapshotId: snapshotId,
              volumeType: volumeType,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVolumeRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build(),
              multiAttachEnabled: BuiltValueNullFieldError.checkNotNull(
                  multiAttachEnabled,
                  r'CreateVolumeRequest',
                  'multiAttachEnabled'),
              throughput: BuiltValueNullFieldError.checkNotNull(
                  throughput, r'CreateVolumeRequest', 'throughput'),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVolumeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
