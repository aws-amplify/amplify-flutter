// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_torrent_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectTorrentRequest extends GetObjectTorrentRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i3.RequestPayer? requestPayer;

  factory _$GetObjectTorrentRequest(
          [void Function(GetObjectTorrentRequestBuilder)? updates]) =>
      (new GetObjectTorrentRequestBuilder()..update(updates))._build();

  _$GetObjectTorrentRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectTorrentRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'GetObjectTorrentRequest', 'key');
  }

  @override
  GetObjectTorrentRequest rebuild(
          void Function(GetObjectTorrentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTorrentRequestBuilder toBuilder() =>
      new GetObjectTorrentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTorrentRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        requestPayer == other.requestPayer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectTorrentRequestBuilder
    implements
        Builder<GetObjectTorrentRequest, GetObjectTorrentRequestBuilder> {
  _$GetObjectTorrentRequest? _$v;

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

  GetObjectTorrentRequestBuilder() {
    GetObjectTorrentRequest._init(this);
  }

  GetObjectTorrentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectTorrentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTorrentRequest;
  }

  @override
  void update(void Function(GetObjectTorrentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTorrentRequest build() => _build();

  _$GetObjectTorrentRequest _build() {
    final _$result = _$v ??
        new _$GetObjectTorrentRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectTorrentRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectTorrentRequest', 'key'),
            requestPayer: requestPayer);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectTorrentRequestPayload extends GetObjectTorrentRequestPayload {
  factory _$GetObjectTorrentRequestPayload(
          [void Function(GetObjectTorrentRequestPayloadBuilder)? updates]) =>
      (new GetObjectTorrentRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectTorrentRequestPayload._() : super._();

  @override
  GetObjectTorrentRequestPayload rebuild(
          void Function(GetObjectTorrentRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTorrentRequestPayloadBuilder toBuilder() =>
      new GetObjectTorrentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTorrentRequestPayload;
  }

  @override
  int get hashCode {
    return 678056383;
  }
}

class GetObjectTorrentRequestPayloadBuilder
    implements
        Builder<GetObjectTorrentRequestPayload,
            GetObjectTorrentRequestPayloadBuilder> {
  _$GetObjectTorrentRequestPayload? _$v;

  GetObjectTorrentRequestPayloadBuilder() {
    GetObjectTorrentRequestPayload._init(this);
  }

  @override
  void replace(GetObjectTorrentRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTorrentRequestPayload;
  }

  @override
  void update(void Function(GetObjectTorrentRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTorrentRequestPayload build() => _build();

  _$GetObjectTorrentRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectTorrentRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
