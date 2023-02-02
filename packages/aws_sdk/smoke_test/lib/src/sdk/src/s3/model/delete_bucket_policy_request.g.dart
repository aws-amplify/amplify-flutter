// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketPolicyRequest extends DeleteBucketPolicyRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketPolicyRequest(
          [void Function(DeleteBucketPolicyRequestBuilder)? updates]) =>
      (new DeleteBucketPolicyRequestBuilder()..update(updates))._build();

  _$DeleteBucketPolicyRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketPolicyRequest', 'bucket');
  }

  @override
  DeleteBucketPolicyRequest rebuild(
          void Function(DeleteBucketPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketPolicyRequestBuilder toBuilder() =>
      new DeleteBucketPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketPolicyRequest &&
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

class DeleteBucketPolicyRequestBuilder
    implements
        Builder<DeleteBucketPolicyRequest, DeleteBucketPolicyRequestBuilder> {
  _$DeleteBucketPolicyRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketPolicyRequestBuilder() {
    DeleteBucketPolicyRequest._init(this);
  }

  DeleteBucketPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketPolicyRequest;
  }

  @override
  void update(void Function(DeleteBucketPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketPolicyRequest build() => _build();

  _$DeleteBucketPolicyRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketPolicyRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketPolicyRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketPolicyRequestPayload
    extends DeleteBucketPolicyRequestPayload {
  factory _$DeleteBucketPolicyRequestPayload(
          [void Function(DeleteBucketPolicyRequestPayloadBuilder)? updates]) =>
      (new DeleteBucketPolicyRequestPayloadBuilder()..update(updates))._build();

  _$DeleteBucketPolicyRequestPayload._() : super._();

  @override
  DeleteBucketPolicyRequestPayload rebuild(
          void Function(DeleteBucketPolicyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketPolicyRequestPayloadBuilder toBuilder() =>
      new DeleteBucketPolicyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketPolicyRequestPayload;
  }

  @override
  int get hashCode {
    return 674755937;
  }
}

class DeleteBucketPolicyRequestPayloadBuilder
    implements
        Builder<DeleteBucketPolicyRequestPayload,
            DeleteBucketPolicyRequestPayloadBuilder> {
  _$DeleteBucketPolicyRequestPayload? _$v;

  DeleteBucketPolicyRequestPayloadBuilder() {
    DeleteBucketPolicyRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketPolicyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketPolicyRequestPayload;
  }

  @override
  void update(void Function(DeleteBucketPolicyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketPolicyRequestPayload build() => _build();

  _$DeleteBucketPolicyRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketPolicyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
