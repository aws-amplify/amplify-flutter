// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_tagging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketTaggingRequest extends DeleteBucketTaggingRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketTaggingRequest(
          [void Function(DeleteBucketTaggingRequestBuilder)? updates]) =>
      (new DeleteBucketTaggingRequestBuilder()..update(updates))._build();

  _$DeleteBucketTaggingRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketTaggingRequest', 'bucket');
  }

  @override
  DeleteBucketTaggingRequest rebuild(
          void Function(DeleteBucketTaggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketTaggingRequestBuilder toBuilder() =>
      new DeleteBucketTaggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketTaggingRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteBucketTaggingRequestBuilder
    implements
        Builder<DeleteBucketTaggingRequest, DeleteBucketTaggingRequestBuilder> {
  _$DeleteBucketTaggingRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketTaggingRequestBuilder() {
    DeleteBucketTaggingRequest._init(this);
  }

  DeleteBucketTaggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketTaggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketTaggingRequest;
  }

  @override
  void update(void Function(DeleteBucketTaggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketTaggingRequest build() => _build();

  _$DeleteBucketTaggingRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketTaggingRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketTaggingRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketTaggingRequestPayload
    extends DeleteBucketTaggingRequestPayload {
  factory _$DeleteBucketTaggingRequestPayload(
          [void Function(DeleteBucketTaggingRequestPayloadBuilder)? updates]) =>
      (new DeleteBucketTaggingRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteBucketTaggingRequestPayload._() : super._();

  @override
  DeleteBucketTaggingRequestPayload rebuild(
          void Function(DeleteBucketTaggingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketTaggingRequestPayloadBuilder toBuilder() =>
      new DeleteBucketTaggingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketTaggingRequestPayload;
  }

  @override
  int get hashCode {
    return 279305800;
  }
}

class DeleteBucketTaggingRequestPayloadBuilder
    implements
        Builder<DeleteBucketTaggingRequestPayload,
            DeleteBucketTaggingRequestPayloadBuilder> {
  _$DeleteBucketTaggingRequestPayload? _$v;

  DeleteBucketTaggingRequestPayloadBuilder() {
    DeleteBucketTaggingRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketTaggingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketTaggingRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketTaggingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketTaggingRequestPayload build() => _build();

  _$DeleteBucketTaggingRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketTaggingRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
