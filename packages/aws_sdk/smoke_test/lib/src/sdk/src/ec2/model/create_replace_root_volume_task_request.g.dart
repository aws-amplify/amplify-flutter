// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_replace_root_volume_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReplaceRootVolumeTaskRequest
    extends CreateReplaceRootVolumeTaskRequest {
  @override
  final String? instanceId;
  @override
  final String? snapshotId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? imageId;
  @override
  final bool deleteReplacedRootVolume;

  factory _$CreateReplaceRootVolumeTaskRequest(
          [void Function(CreateReplaceRootVolumeTaskRequestBuilder)?
              updates]) =>
      (new CreateReplaceRootVolumeTaskRequestBuilder()..update(updates))
          ._build();

  _$CreateReplaceRootVolumeTaskRequest._(
      {this.instanceId,
      this.snapshotId,
      this.clientToken,
      required this.dryRun,
      this.tagSpecifications,
      this.imageId,
      required this.deleteReplacedRootVolume})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateReplaceRootVolumeTaskRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(deleteReplacedRootVolume,
        r'CreateReplaceRootVolumeTaskRequest', 'deleteReplacedRootVolume');
  }

  @override
  CreateReplaceRootVolumeTaskRequest rebuild(
          void Function(CreateReplaceRootVolumeTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateReplaceRootVolumeTaskRequestBuilder toBuilder() =>
      new CreateReplaceRootVolumeTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReplaceRootVolumeTaskRequest &&
        instanceId == other.instanceId &&
        snapshotId == other.snapshotId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun &&
        tagSpecifications == other.tagSpecifications &&
        imageId == other.imageId &&
        deleteReplacedRootVolume == other.deleteReplacedRootVolume;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, deleteReplacedRootVolume.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateReplaceRootVolumeTaskRequestBuilder
    implements
        Builder<CreateReplaceRootVolumeTaskRequest,
            CreateReplaceRootVolumeTaskRequestBuilder> {
  _$CreateReplaceRootVolumeTaskRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  bool? _deleteReplacedRootVolume;
  bool? get deleteReplacedRootVolume => _$this._deleteReplacedRootVolume;
  set deleteReplacedRootVolume(bool? deleteReplacedRootVolume) =>
      _$this._deleteReplacedRootVolume = deleteReplacedRootVolume;

  CreateReplaceRootVolumeTaskRequestBuilder() {
    CreateReplaceRootVolumeTaskRequest._init(this);
  }

  CreateReplaceRootVolumeTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _snapshotId = $v.snapshotId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _imageId = $v.imageId;
      _deleteReplacedRootVolume = $v.deleteReplacedRootVolume;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReplaceRootVolumeTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateReplaceRootVolumeTaskRequest;
  }

  @override
  void update(
      void Function(CreateReplaceRootVolumeTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReplaceRootVolumeTaskRequest build() => _build();

  _$CreateReplaceRootVolumeTaskRequest _build() {
    _$CreateReplaceRootVolumeTaskRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateReplaceRootVolumeTaskRequest._(
              instanceId: instanceId,
              snapshotId: snapshotId,
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateReplaceRootVolumeTaskRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build(),
              imageId: imageId,
              deleteReplacedRootVolume: BuiltValueNullFieldError.checkNotNull(
                  deleteReplacedRootVolume,
                  r'CreateReplaceRootVolumeTaskRequest',
                  'deleteReplacedRootVolume'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateReplaceRootVolumeTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
