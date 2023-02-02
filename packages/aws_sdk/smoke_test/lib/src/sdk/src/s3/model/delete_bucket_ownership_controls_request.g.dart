// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_ownership_controls_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketOwnershipControlsRequest
    extends DeleteBucketOwnershipControlsRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketOwnershipControlsRequest(
          [void Function(DeleteBucketOwnershipControlsRequestBuilder)?
              updates]) =>
      (new DeleteBucketOwnershipControlsRequestBuilder()..update(updates))
          ._build();

  _$DeleteBucketOwnershipControlsRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketOwnershipControlsRequest', 'bucket');
  }

  @override
  DeleteBucketOwnershipControlsRequest rebuild(
          void Function(DeleteBucketOwnershipControlsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketOwnershipControlsRequestBuilder toBuilder() =>
      new DeleteBucketOwnershipControlsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketOwnershipControlsRequest &&
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

class DeleteBucketOwnershipControlsRequestBuilder
    implements
        Builder<DeleteBucketOwnershipControlsRequest,
            DeleteBucketOwnershipControlsRequestBuilder> {
  _$DeleteBucketOwnershipControlsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketOwnershipControlsRequestBuilder() {
    DeleteBucketOwnershipControlsRequest._init(this);
  }

  DeleteBucketOwnershipControlsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketOwnershipControlsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketOwnershipControlsRequest;
  }

  @override
  void update(
      void Function(DeleteBucketOwnershipControlsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketOwnershipControlsRequest build() => _build();

  _$DeleteBucketOwnershipControlsRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketOwnershipControlsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketOwnershipControlsRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketOwnershipControlsRequestPayload
    extends DeleteBucketOwnershipControlsRequestPayload {
  factory _$DeleteBucketOwnershipControlsRequestPayload(
          [void Function(DeleteBucketOwnershipControlsRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketOwnershipControlsRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$DeleteBucketOwnershipControlsRequestPayload._() : super._();

  @override
  DeleteBucketOwnershipControlsRequestPayload rebuild(
          void Function(DeleteBucketOwnershipControlsRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketOwnershipControlsRequestPayloadBuilder toBuilder() =>
      new DeleteBucketOwnershipControlsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketOwnershipControlsRequestPayload;
  }

  @override
  int get hashCode {
    return 223817415;
  }
}

class DeleteBucketOwnershipControlsRequestPayloadBuilder
    implements
        Builder<DeleteBucketOwnershipControlsRequestPayload,
            DeleteBucketOwnershipControlsRequestPayloadBuilder> {
  _$DeleteBucketOwnershipControlsRequestPayload? _$v;

  DeleteBucketOwnershipControlsRequestPayloadBuilder() {
    DeleteBucketOwnershipControlsRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketOwnershipControlsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketOwnershipControlsRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketOwnershipControlsRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketOwnershipControlsRequestPayload build() => _build();

  _$DeleteBucketOwnershipControlsRequestPayload _build() {
    final _$result =
        _$v ?? new _$DeleteBucketOwnershipControlsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
