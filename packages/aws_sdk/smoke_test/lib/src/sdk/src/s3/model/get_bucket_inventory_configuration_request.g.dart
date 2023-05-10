// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_inventory_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketInventoryConfigurationRequest
    extends GetBucketInventoryConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketInventoryConfigurationRequest(
          [void Function(GetBucketInventoryConfigurationRequestBuilder)?
              updates]) =>
      (new GetBucketInventoryConfigurationRequestBuilder()..update(updates))
          ._build();

  _$GetBucketInventoryConfigurationRequest._(
      {required this.bucket, required this.id, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketInventoryConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GetBucketInventoryConfigurationRequest', 'id');
  }

  @override
  GetBucketInventoryConfigurationRequest rebuild(
          void Function(GetBucketInventoryConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketInventoryConfigurationRequestBuilder toBuilder() =>
      new GetBucketInventoryConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketInventoryConfigurationRequest &&
        bucket == other.bucket &&
        id == other.id &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketInventoryConfigurationRequestBuilder
    implements
        Builder<GetBucketInventoryConfigurationRequest,
            GetBucketInventoryConfigurationRequestBuilder> {
  _$GetBucketInventoryConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketInventoryConfigurationRequestBuilder() {
    GetBucketInventoryConfigurationRequest._init(this);
  }

  GetBucketInventoryConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketInventoryConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketInventoryConfigurationRequest;
  }

  @override
  void update(
      void Function(GetBucketInventoryConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketInventoryConfigurationRequest build() => _build();

  _$GetBucketInventoryConfigurationRequest _build() {
    final _$result = _$v ??
        new _$GetBucketInventoryConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketInventoryConfigurationRequest', 'bucket'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GetBucketInventoryConfigurationRequest', 'id'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketInventoryConfigurationRequestPayload
    extends GetBucketInventoryConfigurationRequestPayload {
  factory _$GetBucketInventoryConfigurationRequestPayload(
          [void Function(GetBucketInventoryConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketInventoryConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$GetBucketInventoryConfigurationRequestPayload._() : super._();

  @override
  GetBucketInventoryConfigurationRequestPayload rebuild(
          void Function(GetBucketInventoryConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketInventoryConfigurationRequestPayloadBuilder toBuilder() =>
      new GetBucketInventoryConfigurationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketInventoryConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 566532058;
  }
}

class GetBucketInventoryConfigurationRequestPayloadBuilder
    implements
        Builder<GetBucketInventoryConfigurationRequestPayload,
            GetBucketInventoryConfigurationRequestPayloadBuilder> {
  _$GetBucketInventoryConfigurationRequestPayload? _$v;

  GetBucketInventoryConfigurationRequestPayloadBuilder() {
    GetBucketInventoryConfigurationRequestPayload._init(this);
  }

  @override
  void replace(GetBucketInventoryConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketInventoryConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketInventoryConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketInventoryConfigurationRequestPayload build() => _build();

  _$GetBucketInventoryConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$GetBucketInventoryConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
