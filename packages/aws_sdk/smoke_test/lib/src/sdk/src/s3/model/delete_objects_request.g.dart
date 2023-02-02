// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_objects_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectsRequest extends DeleteObjectsRequest {
  @override
  final String bucket;
  @override
  final bool? bypassGovernanceRetention;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.Delete delete;
  @override
  final String? expectedBucketOwner;
  @override
  final String? mfa;
  @override
  final _i5.RequestPayer? requestPayer;

  factory _$DeleteObjectsRequest(
          [void Function(DeleteObjectsRequestBuilder)? updates]) =>
      (new DeleteObjectsRequestBuilder()..update(updates))._build();

  _$DeleteObjectsRequest._(
      {required this.bucket,
      this.bypassGovernanceRetention,
      this.checksumAlgorithm,
      required this.delete,
      this.expectedBucketOwner,
      this.mfa,
      this.requestPayer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteObjectsRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        delete, r'DeleteObjectsRequest', 'delete');
  }

  @override
  DeleteObjectsRequest rebuild(
          void Function(DeleteObjectsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectsRequestBuilder toBuilder() =>
      new DeleteObjectsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectsRequest &&
        bucket == other.bucket &&
        bypassGovernanceRetention == other.bypassGovernanceRetention &&
        checksumAlgorithm == other.checksumAlgorithm &&
        delete == other.delete &&
        expectedBucketOwner == other.expectedBucketOwner &&
        mfa == other.mfa &&
        requestPayer == other.requestPayer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, bypassGovernanceRetention.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, mfa.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteObjectsRequestBuilder
    implements Builder<DeleteObjectsRequest, DeleteObjectsRequestBuilder> {
  _$DeleteObjectsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  bool? _bypassGovernanceRetention;
  bool? get bypassGovernanceRetention => _$this._bypassGovernanceRetention;
  set bypassGovernanceRetention(bool? bypassGovernanceRetention) =>
      _$this._bypassGovernanceRetention = bypassGovernanceRetention;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.DeleteBuilder? _delete;
  _i2.DeleteBuilder get delete => _$this._delete ??= new _i2.DeleteBuilder();
  set delete(_i2.DeleteBuilder? delete) => _$this._delete = delete;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _mfa;
  String? get mfa => _$this._mfa;
  set mfa(String? mfa) => _$this._mfa = mfa;

  _i5.RequestPayer? _requestPayer;
  _i5.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i5.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  DeleteObjectsRequestBuilder() {
    DeleteObjectsRequest._init(this);
  }

  DeleteObjectsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _bypassGovernanceRetention = $v.bypassGovernanceRetention;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _delete = $v.delete.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _mfa = $v.mfa;
      _requestPayer = $v.requestPayer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectsRequest;
  }

  @override
  void update(void Function(DeleteObjectsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectsRequest build() => _build();

  _$DeleteObjectsRequest _build() {
    _$DeleteObjectsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteObjectsRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'DeleteObjectsRequest', 'bucket'),
              bypassGovernanceRetention: bypassGovernanceRetention,
              checksumAlgorithm: checksumAlgorithm,
              delete: delete.build(),
              expectedBucketOwner: expectedBucketOwner,
              mfa: mfa,
              requestPayer: requestPayer);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delete';
        delete.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteObjectsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
