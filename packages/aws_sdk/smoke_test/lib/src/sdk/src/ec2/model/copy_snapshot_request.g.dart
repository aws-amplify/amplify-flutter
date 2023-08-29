// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_snapshot_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopySnapshotRequest extends CopySnapshotRequest {
  @override
  final String? description;
  @override
  final String? destinationOutpostArn;
  @override
  final String? destinationRegion;
  @override
  final bool encrypted;
  @override
  final String? kmsKeyId;
  @override
  final String? presignedUrl;
  @override
  final String? sourceRegion;
  @override
  final String? sourceSnapshotId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CopySnapshotRequest(
          [void Function(CopySnapshotRequestBuilder)? updates]) =>
      (new CopySnapshotRequestBuilder()..update(updates))._build();

  _$CopySnapshotRequest._(
      {this.description,
      this.destinationOutpostArn,
      this.destinationRegion,
      required this.encrypted,
      this.kmsKeyId,
      this.presignedUrl,
      this.sourceRegion,
      this.sourceSnapshotId,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'CopySnapshotRequest', 'encrypted');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CopySnapshotRequest', 'dryRun');
  }

  @override
  CopySnapshotRequest rebuild(
          void Function(CopySnapshotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopySnapshotRequestBuilder toBuilder() =>
      new CopySnapshotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopySnapshotRequest &&
        description == other.description &&
        destinationOutpostArn == other.destinationOutpostArn &&
        destinationRegion == other.destinationRegion &&
        encrypted == other.encrypted &&
        kmsKeyId == other.kmsKeyId &&
        presignedUrl == other.presignedUrl &&
        sourceRegion == other.sourceRegion &&
        sourceSnapshotId == other.sourceSnapshotId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, destinationOutpostArn.hashCode);
    _$hash = $jc(_$hash, destinationRegion.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, presignedUrl.hashCode);
    _$hash = $jc(_$hash, sourceRegion.hashCode);
    _$hash = $jc(_$hash, sourceSnapshotId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CopySnapshotRequestBuilder
    implements Builder<CopySnapshotRequest, CopySnapshotRequestBuilder> {
  _$CopySnapshotRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _destinationOutpostArn;
  String? get destinationOutpostArn => _$this._destinationOutpostArn;
  set destinationOutpostArn(String? destinationOutpostArn) =>
      _$this._destinationOutpostArn = destinationOutpostArn;

  String? _destinationRegion;
  String? get destinationRegion => _$this._destinationRegion;
  set destinationRegion(String? destinationRegion) =>
      _$this._destinationRegion = destinationRegion;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _presignedUrl;
  String? get presignedUrl => _$this._presignedUrl;
  set presignedUrl(String? presignedUrl) => _$this._presignedUrl = presignedUrl;

  String? _sourceRegion;
  String? get sourceRegion => _$this._sourceRegion;
  set sourceRegion(String? sourceRegion) => _$this._sourceRegion = sourceRegion;

  String? _sourceSnapshotId;
  String? get sourceSnapshotId => _$this._sourceSnapshotId;
  set sourceSnapshotId(String? sourceSnapshotId) =>
      _$this._sourceSnapshotId = sourceSnapshotId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CopySnapshotRequestBuilder() {
    CopySnapshotRequest._init(this);
  }

  CopySnapshotRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _destinationOutpostArn = $v.destinationOutpostArn;
      _destinationRegion = $v.destinationRegion;
      _encrypted = $v.encrypted;
      _kmsKeyId = $v.kmsKeyId;
      _presignedUrl = $v.presignedUrl;
      _sourceRegion = $v.sourceRegion;
      _sourceSnapshotId = $v.sourceSnapshotId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopySnapshotRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopySnapshotRequest;
  }

  @override
  void update(void Function(CopySnapshotRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopySnapshotRequest build() => _build();

  _$CopySnapshotRequest _build() {
    _$CopySnapshotRequest _$result;
    try {
      _$result = _$v ??
          new _$CopySnapshotRequest._(
              description: description,
              destinationOutpostArn: destinationOutpostArn,
              destinationRegion: destinationRegion,
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'CopySnapshotRequest', 'encrypted'),
              kmsKeyId: kmsKeyId,
              presignedUrl: presignedUrl,
              sourceRegion: sourceRegion,
              sourceSnapshotId: sourceSnapshotId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CopySnapshotRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CopySnapshotRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
