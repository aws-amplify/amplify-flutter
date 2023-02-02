// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketRequest extends DeleteBucketRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketRequest(
          [void Function(DeleteBucketRequestBuilder)? updates]) =>
      (new DeleteBucketRequestBuilder()..update(updates))._build();

  _$DeleteBucketRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketRequest', 'bucket');
  }

  @override
  DeleteBucketRequest rebuild(
          void Function(DeleteBucketRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketRequestBuilder toBuilder() =>
      new DeleteBucketRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketRequest &&
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

class DeleteBucketRequestBuilder
    implements Builder<DeleteBucketRequest, DeleteBucketRequestBuilder> {
  _$DeleteBucketRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketRequestBuilder() {
    DeleteBucketRequest._init(this);
  }

  DeleteBucketRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketRequest;
  }

  @override
  void update(void Function(DeleteBucketRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketRequest build() => _build();

  _$DeleteBucketRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketRequestPayload extends DeleteBucketRequestPayload {
  factory _$DeleteBucketRequestPayload(
          [void Function(DeleteBucketRequestPayloadBuilder)? updates]) =>
      (new DeleteBucketRequestPayloadBuilder()..update(updates))._build();

  _$DeleteBucketRequestPayload._() : super._();

  @override
  DeleteBucketRequestPayload rebuild(
          void Function(DeleteBucketRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketRequestPayloadBuilder toBuilder() =>
      new DeleteBucketRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketRequestPayload;
  }

  @override
  int get hashCode {
    return 853880129;
  }
}

class DeleteBucketRequestPayloadBuilder
    implements
        Builder<DeleteBucketRequestPayload, DeleteBucketRequestPayloadBuilder> {
  _$DeleteBucketRequestPayload? _$v;

  DeleteBucketRequestPayloadBuilder() {
    DeleteBucketRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketRequestPayload;
  }

  @override
  void update(void Function(DeleteBucketRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketRequestPayload build() => _build();

  _$DeleteBucketRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
