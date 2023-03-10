// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_legal_hold_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectLegalHoldRequest extends GetObjectLegalHoldRequest {
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

  factory _$GetObjectLegalHoldRequest(
          [void Function(GetObjectLegalHoldRequestBuilder)? updates]) =>
      (new GetObjectLegalHoldRequestBuilder()..update(updates))._build();

  _$GetObjectLegalHoldRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectLegalHoldRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'GetObjectLegalHoldRequest', 'key');
  }

  @override
  GetObjectLegalHoldRequest rebuild(
          void Function(GetObjectLegalHoldRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectLegalHoldRequestBuilder toBuilder() =>
      new GetObjectLegalHoldRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectLegalHoldRequest &&
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

class GetObjectLegalHoldRequestBuilder
    implements
        Builder<GetObjectLegalHoldRequest, GetObjectLegalHoldRequestBuilder> {
  _$GetObjectLegalHoldRequest? _$v;

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

  GetObjectLegalHoldRequestBuilder() {
    GetObjectLegalHoldRequest._init(this);
  }

  GetObjectLegalHoldRequestBuilder get _$this {
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
  void replace(GetObjectLegalHoldRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectLegalHoldRequest;
  }

  @override
  void update(void Function(GetObjectLegalHoldRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectLegalHoldRequest build() => _build();

  _$GetObjectLegalHoldRequest _build() {
    final _$result = _$v ??
        new _$GetObjectLegalHoldRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectLegalHoldRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectLegalHoldRequest', 'key'),
            requestPayer: requestPayer,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectLegalHoldRequestPayload
    extends GetObjectLegalHoldRequestPayload {
  factory _$GetObjectLegalHoldRequestPayload(
          [void Function(GetObjectLegalHoldRequestPayloadBuilder)? updates]) =>
      (new GetObjectLegalHoldRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectLegalHoldRequestPayload._() : super._();

  @override
  GetObjectLegalHoldRequestPayload rebuild(
          void Function(GetObjectLegalHoldRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectLegalHoldRequestPayloadBuilder toBuilder() =>
      new GetObjectLegalHoldRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectLegalHoldRequestPayload;
  }

  @override
  int get hashCode {
    return 1028107919;
  }
}

class GetObjectLegalHoldRequestPayloadBuilder
    implements
        Builder<GetObjectLegalHoldRequestPayload,
            GetObjectLegalHoldRequestPayloadBuilder> {
  _$GetObjectLegalHoldRequestPayload? _$v;

  GetObjectLegalHoldRequestPayloadBuilder() {
    GetObjectLegalHoldRequestPayload._init(this);
  }

  @override
  void replace(GetObjectLegalHoldRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectLegalHoldRequestPayload;
  }

  @override
  void update(void Function(GetObjectLegalHoldRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectLegalHoldRequestPayload build() => _build();

  _$GetObjectLegalHoldRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectLegalHoldRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
