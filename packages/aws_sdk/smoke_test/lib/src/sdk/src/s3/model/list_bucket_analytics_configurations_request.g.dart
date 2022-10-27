// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_bucket_analytics_configurations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketAnalyticsConfigurationsRequest
    extends ListBucketAnalyticsConfigurationsRequest {
  @override
  final String bucket;
  @override
  final String? continuationToken;
  @override
  final String? expectedBucketOwner;

  factory _$ListBucketAnalyticsConfigurationsRequest(
          [void Function(ListBucketAnalyticsConfigurationsRequestBuilder)?
              updates]) =>
      (new ListBucketAnalyticsConfigurationsRequestBuilder()..update(updates))
          ._build();

  _$ListBucketAnalyticsConfigurationsRequest._(
      {required this.bucket, this.continuationToken, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListBucketAnalyticsConfigurationsRequest', 'bucket');
  }

  @override
  ListBucketAnalyticsConfigurationsRequest rebuild(
          void Function(ListBucketAnalyticsConfigurationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketAnalyticsConfigurationsRequestBuilder toBuilder() =>
      new ListBucketAnalyticsConfigurationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketAnalyticsConfigurationsRequest &&
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

class ListBucketAnalyticsConfigurationsRequestBuilder
    implements
        Builder<ListBucketAnalyticsConfigurationsRequest,
            ListBucketAnalyticsConfigurationsRequestBuilder> {
  _$ListBucketAnalyticsConfigurationsRequest? _$v;

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

  ListBucketAnalyticsConfigurationsRequestBuilder() {
    ListBucketAnalyticsConfigurationsRequest._init(this);
  }

  ListBucketAnalyticsConfigurationsRequestBuilder get _$this {
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
  void replace(ListBucketAnalyticsConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketAnalyticsConfigurationsRequest;
  }

  @override
  void update(
      void Function(ListBucketAnalyticsConfigurationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketAnalyticsConfigurationsRequest build() => _build();

  _$ListBucketAnalyticsConfigurationsRequest _build() {
    final _$result = _$v ??
        new _$ListBucketAnalyticsConfigurationsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'ListBucketAnalyticsConfigurationsRequest', 'bucket'),
            continuationToken: continuationToken,
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$ListBucketAnalyticsConfigurationsRequestPayload
    extends ListBucketAnalyticsConfigurationsRequestPayload {
  factory _$ListBucketAnalyticsConfigurationsRequestPayload(
          [void Function(
                  ListBucketAnalyticsConfigurationsRequestPayloadBuilder)?
              updates]) =>
      (new ListBucketAnalyticsConfigurationsRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$ListBucketAnalyticsConfigurationsRequestPayload._() : super._();

  @override
  ListBucketAnalyticsConfigurationsRequestPayload rebuild(
          void Function(ListBucketAnalyticsConfigurationsRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketAnalyticsConfigurationsRequestPayloadBuilder toBuilder() =>
      new ListBucketAnalyticsConfigurationsRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketAnalyticsConfigurationsRequestPayload;
  }

  @override
  int get hashCode {
    return 512842950;
  }
}

class ListBucketAnalyticsConfigurationsRequestPayloadBuilder
    implements
        Builder<ListBucketAnalyticsConfigurationsRequestPayload,
            ListBucketAnalyticsConfigurationsRequestPayloadBuilder> {
  _$ListBucketAnalyticsConfigurationsRequestPayload? _$v;

  ListBucketAnalyticsConfigurationsRequestPayloadBuilder() {
    ListBucketAnalyticsConfigurationsRequestPayload._init(this);
  }

  @override
  void replace(ListBucketAnalyticsConfigurationsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketAnalyticsConfigurationsRequestPayload;
  }

  @override
  void update(
      void Function(ListBucketAnalyticsConfigurationsRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketAnalyticsConfigurationsRequestPayload build() => _build();

  _$ListBucketAnalyticsConfigurationsRequestPayload _build() {
    final _$result =
        _$v ?? new _$ListBucketAnalyticsConfigurationsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
