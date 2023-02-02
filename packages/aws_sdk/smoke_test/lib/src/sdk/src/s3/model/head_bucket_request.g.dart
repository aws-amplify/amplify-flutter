// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.head_bucket_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HeadBucketRequest extends HeadBucketRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$HeadBucketRequest(
          [void Function(HeadBucketRequestBuilder)? updates]) =>
      (new HeadBucketRequestBuilder()..update(updates))._build();

  _$HeadBucketRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'HeadBucketRequest', 'bucket');
  }

  @override
  HeadBucketRequest rebuild(void Function(HeadBucketRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadBucketRequestBuilder toBuilder() =>
      new HeadBucketRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeadBucketRequest &&
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

class HeadBucketRequestBuilder
    implements Builder<HeadBucketRequest, HeadBucketRequestBuilder> {
  _$HeadBucketRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  HeadBucketRequestBuilder() {
    HeadBucketRequest._init(this);
  }

  HeadBucketRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HeadBucketRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HeadBucketRequest;
  }

  @override
  void update(void Function(HeadBucketRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeadBucketRequest build() => _build();

  _$HeadBucketRequest _build() {
    final _$result = _$v ??
        new _$HeadBucketRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'HeadBucketRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$HeadBucketRequestPayload extends HeadBucketRequestPayload {
  factory _$HeadBucketRequestPayload(
          [void Function(HeadBucketRequestPayloadBuilder)? updates]) =>
      (new HeadBucketRequestPayloadBuilder()..update(updates))._build();

  _$HeadBucketRequestPayload._() : super._();

  @override
  HeadBucketRequestPayload rebuild(
          void Function(HeadBucketRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadBucketRequestPayloadBuilder toBuilder() =>
      new HeadBucketRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeadBucketRequestPayload;
  }

  @override
  int get hashCode {
    return 963116505;
  }
}

class HeadBucketRequestPayloadBuilder
    implements
        Builder<HeadBucketRequestPayload, HeadBucketRequestPayloadBuilder> {
  _$HeadBucketRequestPayload? _$v;

  HeadBucketRequestPayloadBuilder() {
    HeadBucketRequestPayload._init(this);
  }

  @override
  void replace(HeadBucketRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HeadBucketRequestPayload;
  }

  @override
  void update(void Function(HeadBucketRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeadBucketRequestPayload build() => _build();

  _$HeadBucketRequestPayload _build() {
    final _$result = _$v ?? new _$HeadBucketRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
