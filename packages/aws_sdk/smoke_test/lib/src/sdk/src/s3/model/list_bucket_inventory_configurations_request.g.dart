// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_bucket_inventory_configurations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketInventoryConfigurationsRequest
    extends ListBucketInventoryConfigurationsRequest {
  @override
  final String bucket;
  @override
  final String? continuationToken;
  @override
  final String? expectedBucketOwner;

  factory _$ListBucketInventoryConfigurationsRequest(
          [void Function(ListBucketInventoryConfigurationsRequestBuilder)?
              updates]) =>
      (new ListBucketInventoryConfigurationsRequestBuilder()..update(updates))
          ._build();

  _$ListBucketInventoryConfigurationsRequest._(
      {required this.bucket, this.continuationToken, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListBucketInventoryConfigurationsRequest', 'bucket');
  }

  @override
  ListBucketInventoryConfigurationsRequest rebuild(
          void Function(ListBucketInventoryConfigurationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketInventoryConfigurationsRequestBuilder toBuilder() =>
      new ListBucketInventoryConfigurationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketInventoryConfigurationsRequest &&
        bucket == other.bucket &&
        continuationToken == other.continuationToken &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, continuationToken.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListBucketInventoryConfigurationsRequestBuilder
    implements
        Builder<ListBucketInventoryConfigurationsRequest,
            ListBucketInventoryConfigurationsRequestBuilder> {
  _$ListBucketInventoryConfigurationsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  ListBucketInventoryConfigurationsRequestBuilder() {
    ListBucketInventoryConfigurationsRequest._init(this);
  }

  ListBucketInventoryConfigurationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _continuationToken = $v.continuationToken;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBucketInventoryConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketInventoryConfigurationsRequest;
  }

  @override
  void update(
      void Function(ListBucketInventoryConfigurationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketInventoryConfigurationsRequest build() => _build();

  _$ListBucketInventoryConfigurationsRequest _build() {
    final _$result = _$v ??
        new _$ListBucketInventoryConfigurationsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'ListBucketInventoryConfigurationsRequest', 'bucket'),
            continuationToken: continuationToken,
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$ListBucketInventoryConfigurationsRequestPayload
    extends ListBucketInventoryConfigurationsRequestPayload {
  factory _$ListBucketInventoryConfigurationsRequestPayload(
          [void Function(
                  ListBucketInventoryConfigurationsRequestPayloadBuilder)?
              updates]) =>
      (new ListBucketInventoryConfigurationsRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$ListBucketInventoryConfigurationsRequestPayload._() : super._();

  @override
  ListBucketInventoryConfigurationsRequestPayload rebuild(
          void Function(ListBucketInventoryConfigurationsRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketInventoryConfigurationsRequestPayloadBuilder toBuilder() =>
      new ListBucketInventoryConfigurationsRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketInventoryConfigurationsRequestPayload;
  }

  @override
  int get hashCode {
    return 230852194;
  }
}

class ListBucketInventoryConfigurationsRequestPayloadBuilder
    implements
        Builder<ListBucketInventoryConfigurationsRequestPayload,
            ListBucketInventoryConfigurationsRequestPayloadBuilder> {
  _$ListBucketInventoryConfigurationsRequestPayload? _$v;

  ListBucketInventoryConfigurationsRequestPayloadBuilder() {
    ListBucketInventoryConfigurationsRequestPayload._init(this);
  }

  @override
  void replace(ListBucketInventoryConfigurationsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketInventoryConfigurationsRequestPayload;
  }

  @override
  void update(
      void Function(ListBucketInventoryConfigurationsRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketInventoryConfigurationsRequestPayload build() => _build();

  _$ListBucketInventoryConfigurationsRequestPayload _build() {
    final _$result =
        _$v ?? new _$ListBucketInventoryConfigurationsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
