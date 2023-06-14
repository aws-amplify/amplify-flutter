// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_object_acl_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectAclRequest extends GetObjectAclRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final String? versionId;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? expectedBucketOwner;

  factory _$GetObjectAclRequest(
          [void Function(GetObjectAclRequestBuilder)? updates]) =>
      (new GetObjectAclRequestBuilder()..update(updates))._build();

  _$GetObjectAclRequest._(
      {required this.bucket,
      required this.key,
      this.versionId,
      this.requestPayer,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectAclRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'GetObjectAclRequest', 'key');
  }

  @override
  GetObjectAclRequest rebuild(
          void Function(GetObjectAclRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAclRequestBuilder toBuilder() =>
      new GetObjectAclRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAclRequest &&
        bucket == other.bucket &&
        key == other.key &&
        versionId == other.versionId &&
        requestPayer == other.requestPayer &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectAclRequestBuilder
    implements Builder<GetObjectAclRequest, GetObjectAclRequestBuilder> {
  _$GetObjectAclRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetObjectAclRequestBuilder() {
    GetObjectAclRequest._init(this);
  }

  GetObjectAclRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _versionId = $v.versionId;
      _requestPayer = $v.requestPayer;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectAclRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAclRequest;
  }

  @override
  void update(void Function(GetObjectAclRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAclRequest build() => _build();

  _$GetObjectAclRequest _build() {
    final _$result = _$v ??
        new _$GetObjectAclRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectAclRequest', 'bucket'),
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectAclRequest', 'key'),
            versionId: versionId,
            requestPayer: requestPayer,
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectAclRequestPayload extends GetObjectAclRequestPayload {
  factory _$GetObjectAclRequestPayload(
          [void Function(GetObjectAclRequestPayloadBuilder)? updates]) =>
      (new GetObjectAclRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectAclRequestPayload._() : super._();

  @override
  GetObjectAclRequestPayload rebuild(
          void Function(GetObjectAclRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectAclRequestPayloadBuilder toBuilder() =>
      new GetObjectAclRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectAclRequestPayload;
  }

  @override
  int get hashCode {
    return 274248117;
  }
}

class GetObjectAclRequestPayloadBuilder
    implements
        Builder<GetObjectAclRequestPayload, GetObjectAclRequestPayloadBuilder> {
  _$GetObjectAclRequestPayload? _$v;

  GetObjectAclRequestPayloadBuilder() {
    GetObjectAclRequestPayload._init(this);
  }

  @override
  void replace(GetObjectAclRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectAclRequestPayload;
  }

  @override
  void update(void Function(GetObjectAclRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectAclRequestPayload build() => _build();

  _$GetObjectAclRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectAclRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
