// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_versioning_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketVersioningRequest extends GetBucketVersioningRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketVersioningRequest(
          [void Function(GetBucketVersioningRequestBuilder)? updates]) =>
      (new GetBucketVersioningRequestBuilder()..update(updates))._build();

  _$GetBucketVersioningRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketVersioningRequest', 'bucket');
  }

  @override
  GetBucketVersioningRequest rebuild(
          void Function(GetBucketVersioningRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketVersioningRequestBuilder toBuilder() =>
      new GetBucketVersioningRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketVersioningRequest &&
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

class GetBucketVersioningRequestBuilder
    implements
        Builder<GetBucketVersioningRequest, GetBucketVersioningRequestBuilder> {
  _$GetBucketVersioningRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketVersioningRequestBuilder() {
    GetBucketVersioningRequest._init(this);
  }

  GetBucketVersioningRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketVersioningRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketVersioningRequest;
  }

  @override
  void update(void Function(GetBucketVersioningRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketVersioningRequest build() => _build();

  _$GetBucketVersioningRequest _build() {
    final _$result = _$v ??
        new _$GetBucketVersioningRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketVersioningRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketVersioningRequestPayload
    extends GetBucketVersioningRequestPayload {
  factory _$GetBucketVersioningRequestPayload(
          [void Function(GetBucketVersioningRequestPayloadBuilder)? updates]) =>
      (new GetBucketVersioningRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetBucketVersioningRequestPayload._() : super._();

  @override
  GetBucketVersioningRequestPayload rebuild(
          void Function(GetBucketVersioningRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketVersioningRequestPayloadBuilder toBuilder() =>
      new GetBucketVersioningRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketVersioningRequestPayload;
  }

  @override
  int get hashCode {
    return 210694358;
  }
}

class GetBucketVersioningRequestPayloadBuilder
    implements
        Builder<GetBucketVersioningRequestPayload,
            GetBucketVersioningRequestPayloadBuilder> {
  _$GetBucketVersioningRequestPayload? _$v;

  GetBucketVersioningRequestPayloadBuilder() {
    GetBucketVersioningRequestPayload._init(this);
  }

  @override
  void replace(GetBucketVersioningRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketVersioningRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketVersioningRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketVersioningRequestPayload build() => _build();

  _$GetBucketVersioningRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketVersioningRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
