// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_encryption_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketEncryptionRequest extends DeleteBucketEncryptionRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketEncryptionRequest(
          [void Function(DeleteBucketEncryptionRequestBuilder)? updates]) =>
      (new DeleteBucketEncryptionRequestBuilder()..update(updates))._build();

  _$DeleteBucketEncryptionRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketEncryptionRequest', 'bucket');
  }

  @override
  DeleteBucketEncryptionRequest rebuild(
          void Function(DeleteBucketEncryptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketEncryptionRequestBuilder toBuilder() =>
      new DeleteBucketEncryptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketEncryptionRequest &&
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

class DeleteBucketEncryptionRequestBuilder
    implements
        Builder<DeleteBucketEncryptionRequest,
            DeleteBucketEncryptionRequestBuilder> {
  _$DeleteBucketEncryptionRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketEncryptionRequestBuilder() {
    DeleteBucketEncryptionRequest._init(this);
  }

  DeleteBucketEncryptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketEncryptionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketEncryptionRequest;
  }

  @override
  void update(void Function(DeleteBucketEncryptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketEncryptionRequest build() => _build();

  _$DeleteBucketEncryptionRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketEncryptionRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketEncryptionRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketEncryptionRequestPayload
    extends DeleteBucketEncryptionRequestPayload {
  factory _$DeleteBucketEncryptionRequestPayload(
          [void Function(DeleteBucketEncryptionRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketEncryptionRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteBucketEncryptionRequestPayload._() : super._();

  @override
  DeleteBucketEncryptionRequestPayload rebuild(
          void Function(DeleteBucketEncryptionRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketEncryptionRequestPayloadBuilder toBuilder() =>
      new DeleteBucketEncryptionRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketEncryptionRequestPayload;
  }

  @override
  int get hashCode {
    return 522429766;
  }
}

class DeleteBucketEncryptionRequestPayloadBuilder
    implements
        Builder<DeleteBucketEncryptionRequestPayload,
            DeleteBucketEncryptionRequestPayloadBuilder> {
  _$DeleteBucketEncryptionRequestPayload? _$v;

  DeleteBucketEncryptionRequestPayloadBuilder() {
    DeleteBucketEncryptionRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketEncryptionRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketEncryptionRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketEncryptionRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketEncryptionRequestPayload build() => _build();

  _$DeleteBucketEncryptionRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketEncryptionRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
