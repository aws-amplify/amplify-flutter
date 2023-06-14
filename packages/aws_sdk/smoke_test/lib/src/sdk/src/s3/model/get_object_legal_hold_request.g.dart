// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_object_legal_hold_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectLegalHoldRequest extends GetObjectLegalHoldRequest {
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

  factory _$GetObjectLegalHoldRequest(
          [void Function(GetObjectLegalHoldRequestBuilder)? updates]) =>
      (new GetObjectLegalHoldRequestBuilder()..update(updates))._build();

  _$GetObjectLegalHoldRequest._(
      {required this.bucket,
      required this.key,
      this.versionId,
      this.requestPayer,
      this.expectedBucketOwner})
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

class GetObjectLegalHoldRequestBuilder
    implements
        Builder<GetObjectLegalHoldRequest, GetObjectLegalHoldRequestBuilder> {
  _$GetObjectLegalHoldRequest? _$v;

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

  GetObjectLegalHoldRequestBuilder() {
    GetObjectLegalHoldRequest._init(this);
  }

  GetObjectLegalHoldRequestBuilder get _$this {
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
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectLegalHoldRequest', 'key'),
            versionId: versionId,
            requestPayer: requestPayer,
            expectedBucketOwner: expectedBucketOwner);
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
