// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_website_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketWebsiteRequest extends GetBucketWebsiteRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketWebsiteRequest(
          [void Function(GetBucketWebsiteRequestBuilder)? updates]) =>
      (new GetBucketWebsiteRequestBuilder()..update(updates))._build();

  _$GetBucketWebsiteRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketWebsiteRequest', 'bucket');
  }

  @override
  GetBucketWebsiteRequest rebuild(
          void Function(GetBucketWebsiteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketWebsiteRequestBuilder toBuilder() =>
      new GetBucketWebsiteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketWebsiteRequest &&
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

class GetBucketWebsiteRequestBuilder
    implements
        Builder<GetBucketWebsiteRequest, GetBucketWebsiteRequestBuilder> {
  _$GetBucketWebsiteRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketWebsiteRequestBuilder() {
    GetBucketWebsiteRequest._init(this);
  }

  GetBucketWebsiteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketWebsiteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketWebsiteRequest;
  }

  @override
  void update(void Function(GetBucketWebsiteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketWebsiteRequest build() => _build();

  _$GetBucketWebsiteRequest _build() {
    final _$result = _$v ??
        new _$GetBucketWebsiteRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketWebsiteRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketWebsiteRequestPayload extends GetBucketWebsiteRequestPayload {
  factory _$GetBucketWebsiteRequestPayload(
          [void Function(GetBucketWebsiteRequestPayloadBuilder)? updates]) =>
      (new GetBucketWebsiteRequestPayloadBuilder()..update(updates))._build();

  _$GetBucketWebsiteRequestPayload._() : super._();

  @override
  GetBucketWebsiteRequestPayload rebuild(
          void Function(GetBucketWebsiteRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketWebsiteRequestPayloadBuilder toBuilder() =>
      new GetBucketWebsiteRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketWebsiteRequestPayload;
  }

  @override
  int get hashCode {
    return 948833468;
  }
}

class GetBucketWebsiteRequestPayloadBuilder
    implements
        Builder<GetBucketWebsiteRequestPayload,
            GetBucketWebsiteRequestPayloadBuilder> {
  _$GetBucketWebsiteRequestPayload? _$v;

  GetBucketWebsiteRequestPayloadBuilder() {
    GetBucketWebsiteRequestPayload._init(this);
  }

  @override
  void replace(GetBucketWebsiteRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketWebsiteRequestPayload;
  }

  @override
  void update(void Function(GetBucketWebsiteRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketWebsiteRequestPayload build() => _build();

  _$GetBucketWebsiteRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketWebsiteRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
