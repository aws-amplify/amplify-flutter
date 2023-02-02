// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.complete_multipart_upload_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompleteMultipartUploadRequest extends CompleteMultipartUploadRequest {
  @override
  final String bucket;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i2.CompletedMultipartUpload? multipartUpload;
  @override
  final _i4.RequestPayer? requestPayer;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String uploadId;

  factory _$CompleteMultipartUploadRequest(
          [void Function(CompleteMultipartUploadRequestBuilder)? updates]) =>
      (new CompleteMultipartUploadRequestBuilder()..update(updates))._build();

  _$CompleteMultipartUploadRequest._(
      {required this.bucket,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.expectedBucketOwner,
      required this.key,
      this.multipartUpload,
      this.requestPayer,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      required this.uploadId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'CompleteMultipartUploadRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'CompleteMultipartUploadRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'CompleteMultipartUploadRequest', 'uploadId');
  }

  @override
  CompleteMultipartUploadRequest rebuild(
          void Function(CompleteMultipartUploadRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteMultipartUploadRequestBuilder toBuilder() =>
      new CompleteMultipartUploadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteMultipartUploadRequest &&
        bucket == other.bucket &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        multipartUpload == other.multipartUpload &&
        requestPayer == other.requestPayer &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        uploadId == other.uploadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, multipartUpload.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CompleteMultipartUploadRequestBuilder
    implements
        Builder<CompleteMultipartUploadRequest,
            CompleteMultipartUploadRequestBuilder> {
  _$CompleteMultipartUploadRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _checksumCrc32;
  String? get checksumCrc32 => _$this._checksumCrc32;
  set checksumCrc32(String? checksumCrc32) =>
      _$this._checksumCrc32 = checksumCrc32;

  String? _checksumCrc32C;
  String? get checksumCrc32C => _$this._checksumCrc32C;
  set checksumCrc32C(String? checksumCrc32C) =>
      _$this._checksumCrc32C = checksumCrc32C;

  String? _checksumSha1;
  String? get checksumSha1 => _$this._checksumSha1;
  set checksumSha1(String? checksumSha1) => _$this._checksumSha1 = checksumSha1;

  String? _checksumSha256;
  String? get checksumSha256 => _$this._checksumSha256;
  set checksumSha256(String? checksumSha256) =>
      _$this._checksumSha256 = checksumSha256;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i2.CompletedMultipartUploadBuilder? _multipartUpload;
  _i2.CompletedMultipartUploadBuilder get multipartUpload =>
      _$this._multipartUpload ??= new _i2.CompletedMultipartUploadBuilder();
  set multipartUpload(_i2.CompletedMultipartUploadBuilder? multipartUpload) =>
      _$this._multipartUpload = multipartUpload;

  _i4.RequestPayer? _requestPayer;
  _i4.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i4.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKey;
  String? get sseCustomerKey => _$this._sseCustomerKey;
  set sseCustomerKey(String? sseCustomerKey) =>
      _$this._sseCustomerKey = sseCustomerKey;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  CompleteMultipartUploadRequestBuilder() {
    CompleteMultipartUploadRequest._init(this);
  }

  CompleteMultipartUploadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _multipartUpload = $v.multipartUpload?.toBuilder();
      _requestPayer = $v.requestPayer;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _uploadId = $v.uploadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompleteMultipartUploadRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompleteMultipartUploadRequest;
  }

  @override
  void update(void Function(CompleteMultipartUploadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompleteMultipartUploadRequest build() => _build();

  _$CompleteMultipartUploadRequest _build() {
    _$CompleteMultipartUploadRequest _$result;
    try {
      _$result = _$v ??
          new _$CompleteMultipartUploadRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'CompleteMultipartUploadRequest', 'bucket'),
              checksumCrc32: checksumCrc32,
              checksumCrc32C: checksumCrc32C,
              checksumSha1: checksumSha1,
              checksumSha256: checksumSha256,
              expectedBucketOwner: expectedBucketOwner,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'CompleteMultipartUploadRequest', 'key'),
              multipartUpload: _multipartUpload?.build(),
              requestPayer: requestPayer,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKey: sseCustomerKey,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              uploadId: BuiltValueNullFieldError.checkNotNull(
                  uploadId, r'CompleteMultipartUploadRequest', 'uploadId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'multipartUpload';
        _multipartUpload?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompleteMultipartUploadRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
