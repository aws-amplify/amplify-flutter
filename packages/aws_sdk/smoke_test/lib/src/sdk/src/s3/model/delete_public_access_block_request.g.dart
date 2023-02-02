// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_public_access_block_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletePublicAccessBlockRequest extends DeletePublicAccessBlockRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeletePublicAccessBlockRequest(
          [void Function(DeletePublicAccessBlockRequestBuilder)? updates]) =>
      (new DeletePublicAccessBlockRequestBuilder()..update(updates))._build();

  _$DeletePublicAccessBlockRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeletePublicAccessBlockRequest', 'bucket');
  }

  @override
  DeletePublicAccessBlockRequest rebuild(
          void Function(DeletePublicAccessBlockRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePublicAccessBlockRequestBuilder toBuilder() =>
      new DeletePublicAccessBlockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePublicAccessBlockRequest &&
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

class DeletePublicAccessBlockRequestBuilder
    implements
        Builder<DeletePublicAccessBlockRequest,
            DeletePublicAccessBlockRequestBuilder> {
  _$DeletePublicAccessBlockRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeletePublicAccessBlockRequestBuilder() {
    DeletePublicAccessBlockRequest._init(this);
  }

  DeletePublicAccessBlockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletePublicAccessBlockRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePublicAccessBlockRequest;
  }

  @override
  void update(void Function(DeletePublicAccessBlockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePublicAccessBlockRequest build() => _build();

  _$DeletePublicAccessBlockRequest _build() {
    final _$result = _$v ??
        new _$DeletePublicAccessBlockRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeletePublicAccessBlockRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeletePublicAccessBlockRequestPayload
    extends DeletePublicAccessBlockRequestPayload {
  factory _$DeletePublicAccessBlockRequestPayload(
          [void Function(DeletePublicAccessBlockRequestPayloadBuilder)?
              updates]) =>
      (new DeletePublicAccessBlockRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeletePublicAccessBlockRequestPayload._() : super._();

  @override
  DeletePublicAccessBlockRequestPayload rebuild(
          void Function(DeletePublicAccessBlockRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePublicAccessBlockRequestPayloadBuilder toBuilder() =>
      new DeletePublicAccessBlockRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePublicAccessBlockRequestPayload;
  }

  @override
  int get hashCode {
    return 123473479;
  }
}

class DeletePublicAccessBlockRequestPayloadBuilder
    implements
        Builder<DeletePublicAccessBlockRequestPayload,
            DeletePublicAccessBlockRequestPayloadBuilder> {
  _$DeletePublicAccessBlockRequestPayload? _$v;

  DeletePublicAccessBlockRequestPayloadBuilder() {
    DeletePublicAccessBlockRequestPayload._init(this);
  }

  @override
  void replace(DeletePublicAccessBlockRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePublicAccessBlockRequestPayload;
  }

  @override
  void update(
      void Function(DeletePublicAccessBlockRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePublicAccessBlockRequestPayload build() => _build();

  _$DeletePublicAccessBlockRequestPayload _build() {
    final _$result = _$v ?? new _$DeletePublicAccessBlockRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
