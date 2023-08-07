// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_multipart_upload_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompleteMultipartUploadRequest extends CompleteMultipartUploadRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final CompletedMultipartUpload? multipartUpload;
  @override
  final String uploadId;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final RequestPayer? requestPayer;
  @override
  final String? expectedBucketOwner;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;

  factory _$CompleteMultipartUploadRequest(
          [void Function(CompleteMultipartUploadRequestBuilder)? updates]) =>
      (new CompleteMultipartUploadRequestBuilder()..update(updates))._build();

  _$CompleteMultipartUploadRequest._(
      {required this.bucket,
      required this.key,
      this.multipartUpload,
      required this.uploadId,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.requestPayer,
      this.expectedBucketOwner,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5})
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
        key == other.key &&
        multipartUpload == other.multipartUpload &&
        uploadId == other.uploadId &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        requestPayer == other.requestPayer &&
        expectedBucketOwner == other.expectedBucketOwner &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, multipartUpload.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
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

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  CompletedMultipartUploadBuilder? _multipartUpload;
  CompletedMultipartUploadBuilder get multipartUpload =>
      _$this._multipartUpload ??= new CompletedMultipartUploadBuilder();
  set multipartUpload(CompletedMultipartUploadBuilder? multipartUpload) =>
      _$this._multipartUpload = multipartUpload;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

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

  RequestPayer? _requestPayer;
  RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

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

  CompleteMultipartUploadRequestBuilder();

  CompleteMultipartUploadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _multipartUpload = $v.multipartUpload?.toBuilder();
      _uploadId = $v.uploadId;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _requestPayer = $v.requestPayer;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
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
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'CompleteMultipartUploadRequest', 'key'),
              multipartUpload: _multipartUpload?.build(),
              uploadId: BuiltValueNullFieldError.checkNotNull(
                  uploadId, r'CompleteMultipartUploadRequest', 'uploadId'),
              checksumCrc32: checksumCrc32,
              checksumCrc32C: checksumCrc32C,
              checksumSha1: checksumSha1,
              checksumSha256: checksumSha256,
              requestPayer: requestPayer,
              expectedBucketOwner: expectedBucketOwner,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKey: sseCustomerKey,
              sseCustomerKeyMd5: sseCustomerKeyMd5);
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
