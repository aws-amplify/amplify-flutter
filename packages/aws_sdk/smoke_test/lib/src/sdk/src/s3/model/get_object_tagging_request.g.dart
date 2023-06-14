// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_object_tagging_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectTaggingRequest extends GetObjectTaggingRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final String? versionId;
  @override
  final String? expectedBucketOwner;
  @override
  final _i3.RequestPayer? requestPayer;

  factory _$GetObjectTaggingRequest(
          [void Function(GetObjectTaggingRequestBuilder)? updates]) =>
      (new GetObjectTaggingRequestBuilder()..update(updates))._build();

  _$GetObjectTaggingRequest._(
      {required this.bucket,
      required this.key,
      this.versionId,
      this.expectedBucketOwner,
      this.requestPayer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectTaggingRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'GetObjectTaggingRequest', 'key');
  }

  @override
  GetObjectTaggingRequest rebuild(
          void Function(GetObjectTaggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTaggingRequestBuilder toBuilder() =>
      new GetObjectTaggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTaggingRequest &&
        bucket == other.bucket &&
        key == other.key &&
        versionId == other.versionId &&
        expectedBucketOwner == other.expectedBucketOwner &&
        requestPayer == other.requestPayer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectTaggingRequestBuilder
    implements
        Builder<GetObjectTaggingRequest, GetObjectTaggingRequestBuilder> {
  _$GetObjectTaggingRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  GetObjectTaggingRequestBuilder() {
    GetObjectTaggingRequest._init(this);
  }

  GetObjectTaggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _versionId = $v.versionId;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _requestPayer = $v.requestPayer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectTaggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTaggingRequest;
  }

  @override
  void update(void Function(GetObjectTaggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTaggingRequest build() => _build();

  _$GetObjectTaggingRequest _build() {
    final _$result = _$v ??
        new _$GetObjectTaggingRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectTaggingRequest', 'bucket'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectTaggingRequest', 'key'),
            versionId: versionId,
            expectedBucketOwner: expectedBucketOwner,
            requestPayer: requestPayer);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectTaggingRequestPayload extends GetObjectTaggingRequestPayload {
  factory _$GetObjectTaggingRequestPayload(
          [void Function(GetObjectTaggingRequestPayloadBuilder)? updates]) =>
      (new GetObjectTaggingRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectTaggingRequestPayload._() : super._();

  @override
  GetObjectTaggingRequestPayload rebuild(
          void Function(GetObjectTaggingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectTaggingRequestPayloadBuilder toBuilder() =>
      new GetObjectTaggingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectTaggingRequestPayload;
  }

  @override
  int get hashCode {
    return 91458753;
  }
}

class GetObjectTaggingRequestPayloadBuilder
    implements
        Builder<GetObjectTaggingRequestPayload,
            GetObjectTaggingRequestPayloadBuilder> {
  _$GetObjectTaggingRequestPayload? _$v;

  GetObjectTaggingRequestPayloadBuilder() {
    GetObjectTaggingRequestPayload._init(this);
  }

  @override
  void replace(GetObjectTaggingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectTaggingRequestPayload;
  }

  @override
  void update(void Function(GetObjectTaggingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectTaggingRequestPayload build() => _build();

  _$GetObjectTaggingRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectTaggingRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
