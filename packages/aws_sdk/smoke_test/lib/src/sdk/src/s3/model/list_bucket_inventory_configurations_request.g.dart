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
    return $jf($jc($jc($jc(0, bucket.hashCode), continuationToken.hashCode),
        expectedBucketOwner.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
