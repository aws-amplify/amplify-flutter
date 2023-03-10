// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_acl_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketAclRequest extends GetBucketAclRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketAclRequest(
          [void Function(GetBucketAclRequestBuilder)? updates]) =>
      (new GetBucketAclRequestBuilder()..update(updates))._build();

  _$GetBucketAclRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketAclRequest', 'bucket');
  }

  @override
  GetBucketAclRequest rebuild(
          void Function(GetBucketAclRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAclRequestBuilder toBuilder() =>
      new GetBucketAclRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAclRequest &&
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

class GetBucketAclRequestBuilder
    implements Builder<GetBucketAclRequest, GetBucketAclRequestBuilder> {
  _$GetBucketAclRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketAclRequestBuilder() {
    GetBucketAclRequest._init(this);
  }

  GetBucketAclRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketAclRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAclRequest;
  }

  @override
  void update(void Function(GetBucketAclRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAclRequest build() => _build();

  _$GetBucketAclRequest _build() {
    final _$result = _$v ??
        new _$GetBucketAclRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketAclRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketAclRequestPayload extends GetBucketAclRequestPayload {
  factory _$GetBucketAclRequestPayload(
          [void Function(GetBucketAclRequestPayloadBuilder)? updates]) =>
      (new GetBucketAclRequestPayloadBuilder()..update(updates))._build();

  _$GetBucketAclRequestPayload._() : super._();

  @override
  GetBucketAclRequestPayload rebuild(
          void Function(GetBucketAclRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAclRequestPayloadBuilder toBuilder() =>
      new GetBucketAclRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAclRequestPayload;
  }

  @override
  int get hashCode {
    return 74675845;
  }
}

class GetBucketAclRequestPayloadBuilder
    implements
        Builder<GetBucketAclRequestPayload, GetBucketAclRequestPayloadBuilder> {
  _$GetBucketAclRequestPayload? _$v;

  GetBucketAclRequestPayloadBuilder() {
    GetBucketAclRequestPayload._init(this);
  }

  @override
  void replace(GetBucketAclRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAclRequestPayload;
  }

  @override
  void update(void Function(GetBucketAclRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAclRequestPayload build() => _build();

  _$GetBucketAclRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketAclRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
