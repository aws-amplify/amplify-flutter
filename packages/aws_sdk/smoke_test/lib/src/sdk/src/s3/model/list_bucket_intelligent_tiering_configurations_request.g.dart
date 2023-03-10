// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_bucket_intelligent_tiering_configurations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketIntelligentTieringConfigurationsRequest
    extends ListBucketIntelligentTieringConfigurationsRequest {
  @override
  final String bucket;
  @override
  final String? continuationToken;

  factory _$ListBucketIntelligentTieringConfigurationsRequest(
          [void Function(
                  ListBucketIntelligentTieringConfigurationsRequestBuilder)?
              updates]) =>
      (new ListBucketIntelligentTieringConfigurationsRequestBuilder()
            ..update(updates))
          ._build();

  _$ListBucketIntelligentTieringConfigurationsRequest._(
      {required this.bucket, this.continuationToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListBucketIntelligentTieringConfigurationsRequest', 'bucket');
  }

  @override
  ListBucketIntelligentTieringConfigurationsRequest rebuild(
          void Function(
                  ListBucketIntelligentTieringConfigurationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketIntelligentTieringConfigurationsRequestBuilder toBuilder() =>
      new ListBucketIntelligentTieringConfigurationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketIntelligentTieringConfigurationsRequest &&
        bucket == other.bucket &&
        continuationToken == other.continuationToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, continuationToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListBucketIntelligentTieringConfigurationsRequestBuilder
    implements
        Builder<ListBucketIntelligentTieringConfigurationsRequest,
            ListBucketIntelligentTieringConfigurationsRequestBuilder> {
  _$ListBucketIntelligentTieringConfigurationsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

  ListBucketIntelligentTieringConfigurationsRequestBuilder() {
    ListBucketIntelligentTieringConfigurationsRequest._init(this);
  }

  ListBucketIntelligentTieringConfigurationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _continuationToken = $v.continuationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBucketIntelligentTieringConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketIntelligentTieringConfigurationsRequest;
  }

  @override
  void update(
      void Function(ListBucketIntelligentTieringConfigurationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketIntelligentTieringConfigurationsRequest build() => _build();

  _$ListBucketIntelligentTieringConfigurationsRequest _build() {
    final _$result = _$v ??
        new _$ListBucketIntelligentTieringConfigurationsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(bucket,
                r'ListBucketIntelligentTieringConfigurationsRequest', 'bucket'),
            continuationToken: continuationToken);
    replace(_$result);
    return _$result;
  }
}

class _$ListBucketIntelligentTieringConfigurationsRequestPayload
    extends ListBucketIntelligentTieringConfigurationsRequestPayload {
  factory _$ListBucketIntelligentTieringConfigurationsRequestPayload(
          [void Function(
                  ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder)?
              updates]) =>
      (new ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$ListBucketIntelligentTieringConfigurationsRequestPayload._() : super._();

  @override
  ListBucketIntelligentTieringConfigurationsRequestPayload rebuild(
          void Function(
                  ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder toBuilder() =>
      new ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketIntelligentTieringConfigurationsRequestPayload;
  }

  @override
  int get hashCode {
    return 1049708692;
  }
}

class ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder
    implements
        Builder<ListBucketIntelligentTieringConfigurationsRequestPayload,
            ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder> {
  _$ListBucketIntelligentTieringConfigurationsRequestPayload? _$v;

  ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder() {
    ListBucketIntelligentTieringConfigurationsRequestPayload._init(this);
  }

  @override
  void replace(ListBucketIntelligentTieringConfigurationsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketIntelligentTieringConfigurationsRequestPayload;
  }

  @override
  void update(
      void Function(
              ListBucketIntelligentTieringConfigurationsRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketIntelligentTieringConfigurationsRequestPayload build() => _build();

  _$ListBucketIntelligentTieringConfigurationsRequestPayload _build() {
    final _$result = _$v ??
        new _$ListBucketIntelligentTieringConfigurationsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
