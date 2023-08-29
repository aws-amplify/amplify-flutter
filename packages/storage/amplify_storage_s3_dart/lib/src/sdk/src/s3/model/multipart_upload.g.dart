// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multipart_upload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultipartUpload extends MultipartUpload {
  @override
  final String? uploadId;
  @override
  final String? key;
  @override
  final DateTime? initiated;
  @override
  final StorageClass? storageClass;
  @override
  final Owner? owner;
  @override
  final Initiator? initiator;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;

  factory _$MultipartUpload([void Function(MultipartUploadBuilder)? updates]) =>
      (new MultipartUploadBuilder()..update(updates))._build();

  _$MultipartUpload._(
      {this.uploadId,
      this.key,
      this.initiated,
      this.storageClass,
      this.owner,
      this.initiator,
      this.checksumAlgorithm})
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
        uploadId == other.uploadId &&
        key == other.key &&
        initiated == other.initiated &&
        storageClass == other.storageClass &&
        owner == other.owner &&
        initiator == other.initiator &&
        checksumAlgorithm == other.checksumAlgorithm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, initiated.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, initiator.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MultipartUploadBuilder
    implements Builder<MultipartUpload, MultipartUploadBuilder> {
  _$MultipartUpload? _$v;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  DateTime? _initiated;
  DateTime? get initiated => _$this._initiated;
  set initiated(DateTime? initiated) => _$this._initiated = initiated;

  StorageClass? _storageClass;
  StorageClass? get storageClass => _$this._storageClass;
  set storageClass(StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  OwnerBuilder? _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder? owner) => _$this._owner = owner;

  InitiatorBuilder? _initiator;
  InitiatorBuilder get initiator =>
      _$this._initiator ??= new InitiatorBuilder();
  set initiator(InitiatorBuilder? initiator) => _$this._initiator = initiator;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  MultipartUploadBuilder();

  MultipartUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uploadId = $v.uploadId;
      _key = $v.key;
      _initiated = $v.initiated;
      _storageClass = $v.storageClass;
      _owner = $v.owner?.toBuilder();
      _initiator = $v.initiator?.toBuilder();
      _checksumAlgorithm = $v.checksumAlgorithm;
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
              uploadId: uploadId,
              key: key,
              initiated: initiated,
              storageClass: storageClass,
              owner: _owner?.build(),
              initiator: _initiator?.build(),
              checksumAlgorithm: checksumAlgorithm);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'initiator';
        _initiator?.build();
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
