// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.multipart_upload;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultipartUpload extends MultipartUpload {
  @override
  final _i2.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final DateTime? initiated;
  @override
  final _i3.Initiator? initiator;
  @override
  final String? key;
  @override
  final _i4.Owner? owner;
  @override
  final _i5.StorageClass? storageClass;
  @override
  final String? uploadId;

  factory _$MultipartUpload([void Function(MultipartUploadBuilder)? updates]) =>
      (new MultipartUploadBuilder()..update(updates))._build();

  _$MultipartUpload._(
      {this.checksumAlgorithm,
      this.initiated,
      this.initiator,
      this.key,
      this.owner,
      this.storageClass,
      this.uploadId})
      : super._();

  @override
  MultipartUpload rebuild(void Function(MultipartUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipartUploadBuilder toBuilder() =>
      new MultipartUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultipartUpload &&
        checksumAlgorithm == other.checksumAlgorithm &&
        initiated == other.initiated &&
        initiator == other.initiator &&
        key == other.key &&
        owner == other.owner &&
        storageClass == other.storageClass &&
        uploadId == other.uploadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, initiated.hashCode);
    _$hash = $jc(_$hash, initiator.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MultipartUploadBuilder
    implements Builder<MultipartUpload, MultipartUploadBuilder> {
  _$MultipartUpload? _$v;

  _i2.ChecksumAlgorithm? _checksumAlgorithm;
  _i2.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i2.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  DateTime? _initiated;
  DateTime? get initiated => _$this._initiated;
  set initiated(DateTime? initiated) => _$this._initiated = initiated;

  _i3.InitiatorBuilder? _initiator;
  _i3.InitiatorBuilder get initiator =>
      _$this._initiator ??= new _i3.InitiatorBuilder();
  set initiator(_i3.InitiatorBuilder? initiator) =>
      _$this._initiator = initiator;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i4.OwnerBuilder? _owner;
  _i4.OwnerBuilder get owner => _$this._owner ??= new _i4.OwnerBuilder();
  set owner(_i4.OwnerBuilder? owner) => _$this._owner = owner;

  _i5.StorageClass? _storageClass;
  _i5.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i5.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  MultipartUploadBuilder() {
    MultipartUpload._init(this);
  }

  MultipartUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumAlgorithm = $v.checksumAlgorithm;
      _initiated = $v.initiated;
      _initiator = $v.initiator?.toBuilder();
      _key = $v.key;
      _owner = $v.owner?.toBuilder();
      _storageClass = $v.storageClass;
      _uploadId = $v.uploadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultipartUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultipartUpload;
  }

  @override
  void update(void Function(MultipartUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MultipartUpload build() => _build();

  _$MultipartUpload _build() {
    _$MultipartUpload _$result;
    try {
      _$result = _$v ??
          new _$MultipartUpload._(
              checksumAlgorithm: checksumAlgorithm,
              initiated: initiated,
              initiator: _initiator?.build(),
              key: key,
              owner: _owner?.build(),
              storageClass: storageClass,
              uploadId: uploadId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'initiator';
        _initiator?.build();

        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MultipartUpload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
