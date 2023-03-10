// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_retention_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectRetentionRequest extends GetObjectRetentionRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? versionId;

  factory _$GetObjectRetentionRequest(
          [void Function(GetObjectRetentionRequestBuilder)? updates]) =>
      (new GetObjectRetentionRequestBuilder()..update(updates))._build();

  _$GetObjectRetentionRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectRetentionRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'GetObjectRetentionRequest', 'key');
  }

  @override
  GetObjectRetentionRequest rebuild(
          void Function(GetObjectRetentionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRetentionRequestBuilder toBuilder() =>
      new GetObjectRetentionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRetentionRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        requestPayer == other.requestPayer &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectRetentionRequestBuilder
    implements
        Builder<GetObjectRetentionRequest, GetObjectRetentionRequestBuilder> {
  _$GetObjectRetentionRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  GetObjectRetentionRequestBuilder() {
    GetObjectRetentionRequest._init(this);
  }

  GetObjectRetentionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectRetentionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRetentionRequest;
  }

  @override
  void update(void Function(GetObjectRetentionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRetentionRequest build() => _build();

  _$GetObjectRetentionRequest _build() {
    final _$result = _$v ??
        new _$GetObjectRetentionRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectRetentionRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectRetentionRequest', 'key'),
            requestPayer: requestPayer,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectRetentionRequestPayload
    extends GetObjectRetentionRequestPayload {
  factory _$GetObjectRetentionRequestPayload(
          [void Function(GetObjectRetentionRequestPayloadBuilder)? updates]) =>
      (new GetObjectRetentionRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectRetentionRequestPayload._() : super._();

  @override
  GetObjectRetentionRequestPayload rebuild(
          void Function(GetObjectRetentionRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRetentionRequestPayloadBuilder toBuilder() =>
      new GetObjectRetentionRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRetentionRequestPayload;
  }

  @override
  int get hashCode {
    return 933124879;
  }
}

class GetObjectRetentionRequestPayloadBuilder
    implements
        Builder<GetObjectRetentionRequestPayload,
            GetObjectRetentionRequestPayloadBuilder> {
  _$GetObjectRetentionRequestPayload? _$v;

  GetObjectRetentionRequestPayloadBuilder() {
    GetObjectRetentionRequestPayload._init(this);
  }

  @override
  void replace(GetObjectRetentionRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRetentionRequestPayload;
  }

  @override
  void update(void Function(GetObjectRetentionRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRetentionRequestPayload build() => _build();

  _$GetObjectRetentionRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectRetentionRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
