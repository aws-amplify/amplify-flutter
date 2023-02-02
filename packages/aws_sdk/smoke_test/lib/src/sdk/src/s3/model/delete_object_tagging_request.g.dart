// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_object_tagging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteObjectTaggingRequest extends DeleteObjectTaggingRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final String? versionId;

  factory _$DeleteObjectTaggingRequest(
          [void Function(DeleteObjectTaggingRequestBuilder)? updates]) =>
      (new DeleteObjectTaggingRequestBuilder()..update(updates))._build();

  _$DeleteObjectTaggingRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteObjectTaggingRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'DeleteObjectTaggingRequest', 'key');
  }

  @override
  DeleteObjectTaggingRequest rebuild(
          void Function(DeleteObjectTaggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectTaggingRequestBuilder toBuilder() =>
      new DeleteObjectTaggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectTaggingRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteObjectTaggingRequestBuilder
    implements
        Builder<DeleteObjectTaggingRequest, DeleteObjectTaggingRequestBuilder> {
  _$DeleteObjectTaggingRequest? _$v;

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

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  DeleteObjectTaggingRequestBuilder() {
    DeleteObjectTaggingRequest._init(this);
  }

  DeleteObjectTaggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteObjectTaggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectTaggingRequest;
  }

  @override
  void update(void Function(DeleteObjectTaggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectTaggingRequest build() => _build();

  _$DeleteObjectTaggingRequest _build() {
    final _$result = _$v ??
        new _$DeleteObjectTaggingRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteObjectTaggingRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'DeleteObjectTaggingRequest', 'key'),
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteObjectTaggingRequestPayload
    extends DeleteObjectTaggingRequestPayload {
  factory _$DeleteObjectTaggingRequestPayload(
          [void Function(DeleteObjectTaggingRequestPayloadBuilder)? updates]) =>
      (new DeleteObjectTaggingRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteObjectTaggingRequestPayload._() : super._();

  @override
  DeleteObjectTaggingRequestPayload rebuild(
          void Function(DeleteObjectTaggingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteObjectTaggingRequestPayloadBuilder toBuilder() =>
      new DeleteObjectTaggingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteObjectTaggingRequestPayload;
  }

  @override
  int get hashCode {
    return 429478584;
  }
}

class DeleteObjectTaggingRequestPayloadBuilder
    implements
        Builder<DeleteObjectTaggingRequestPayload,
            DeleteObjectTaggingRequestPayloadBuilder> {
  _$DeleteObjectTaggingRequestPayload? _$v;

  DeleteObjectTaggingRequestPayloadBuilder() {
    DeleteObjectTaggingRequestPayload._init(this);
  }

  @override
  void replace(DeleteObjectTaggingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteObjectTaggingRequestPayload;
  }

  @override
  void update(
      void Function(DeleteObjectTaggingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteObjectTaggingRequestPayload build() => _build();

  _$DeleteObjectTaggingRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteObjectTaggingRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
