// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.abort_multipart_upload_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AbortMultipartUploadRequest extends AbortMultipartUploadRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String uploadId;

  factory _$AbortMultipartUploadRequest(
          [void Function(AbortMultipartUploadRequestBuilder)? updates]) =>
      (new AbortMultipartUploadRequestBuilder()..update(updates))._build();

  _$AbortMultipartUploadRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      required this.uploadId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'AbortMultipartUploadRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'AbortMultipartUploadRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'AbortMultipartUploadRequest', 'uploadId');
  }

  @override
  AbortMultipartUploadRequest rebuild(
          void Function(AbortMultipartUploadRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbortMultipartUploadRequestBuilder toBuilder() =>
      new AbortMultipartUploadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbortMultipartUploadRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        requestPayer == other.requestPayer &&
        uploadId == other.uploadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AbortMultipartUploadRequestBuilder
    implements
        Builder<AbortMultipartUploadRequest,
            AbortMultipartUploadRequestBuilder> {
  _$AbortMultipartUploadRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  AbortMultipartUploadRequestBuilder() {
    AbortMultipartUploadRequest._init(this);
  }

  AbortMultipartUploadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _uploadId = $v.uploadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbortMultipartUploadRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbortMultipartUploadRequest;
  }

  @override
  void update(void Function(AbortMultipartUploadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbortMultipartUploadRequest build() => _build();

  _$AbortMultipartUploadRequest _build() {
    final _$result = _$v ??
        new _$AbortMultipartUploadRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'AbortMultipartUploadRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'AbortMultipartUploadRequest', 'key'),
            requestPayer: requestPayer,
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'AbortMultipartUploadRequest', 'uploadId'));
    replace(_$result);
    return _$result;
  }
}

class _$AbortMultipartUploadRequestPayload
    extends AbortMultipartUploadRequestPayload {
  factory _$AbortMultipartUploadRequestPayload(
          [void Function(AbortMultipartUploadRequestPayloadBuilder)?
              updates]) =>
      (new AbortMultipartUploadRequestPayloadBuilder()..update(updates))
          ._build();

  _$AbortMultipartUploadRequestPayload._() : super._();

  @override
  AbortMultipartUploadRequestPayload rebuild(
          void Function(AbortMultipartUploadRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbortMultipartUploadRequestPayloadBuilder toBuilder() =>
      new AbortMultipartUploadRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbortMultipartUploadRequestPayload;
  }

  @override
  int get hashCode {
    return 260264418;
  }
}

class AbortMultipartUploadRequestPayloadBuilder
    implements
        Builder<AbortMultipartUploadRequestPayload,
            AbortMultipartUploadRequestPayloadBuilder> {
  _$AbortMultipartUploadRequestPayload? _$v;

  AbortMultipartUploadRequestPayloadBuilder() {
    AbortMultipartUploadRequestPayload._init(this);
  }

  @override
  void replace(AbortMultipartUploadRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbortMultipartUploadRequestPayload;
  }

  @override
  void update(
      void Function(AbortMultipartUploadRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbortMultipartUploadRequestPayload build() => _build();

  _$AbortMultipartUploadRequestPayload _build() {
    final _$result = _$v ?? new _$AbortMultipartUploadRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
