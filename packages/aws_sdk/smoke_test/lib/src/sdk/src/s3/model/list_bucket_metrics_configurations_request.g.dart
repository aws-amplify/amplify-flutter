// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_bucket_metrics_configurations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketMetricsConfigurationsRequest
    extends ListBucketMetricsConfigurationsRequest {
  @override
  final String bucket;
  @override
  final String? continuationToken;
  @override
  final String? expectedBucketOwner;

  factory _$ListBucketMetricsConfigurationsRequest(
          [void Function(ListBucketMetricsConfigurationsRequestBuilder)?
              updates]) =>
      (new ListBucketMetricsConfigurationsRequestBuilder()..update(updates))
          ._build();

  _$ListBucketMetricsConfigurationsRequest._(
      {required this.bucket, this.continuationToken, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'ListBucketMetricsConfigurationsRequest', 'bucket');
  }

  @override
  ListBucketMetricsConfigurationsRequest rebuild(
          void Function(ListBucketMetricsConfigurationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketMetricsConfigurationsRequestBuilder toBuilder() =>
      new ListBucketMetricsConfigurationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketMetricsConfigurationsRequest &&
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

class ListBucketMetricsConfigurationsRequestBuilder
    implements
        Builder<ListBucketMetricsConfigurationsRequest,
            ListBucketMetricsConfigurationsRequestBuilder> {
  _$ListBucketMetricsConfigurationsRequest? _$v;

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

  ListBucketMetricsConfigurationsRequestBuilder() {
    ListBucketMetricsConfigurationsRequest._init(this);
  }

  ListBucketMetricsConfigurationsRequestBuilder get _$this {
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
  void replace(ListBucketMetricsConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketMetricsConfigurationsRequest;
  }

  @override
  void update(
      void Function(ListBucketMetricsConfigurationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketMetricsConfigurationsRequest build() => _build();

  _$ListBucketMetricsConfigurationsRequest _build() {
    final _$result = _$v ??
        new _$ListBucketMetricsConfigurationsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'ListBucketMetricsConfigurationsRequest', 'bucket'),
            continuationToken: continuationToken,
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$ListBucketMetricsConfigurationsRequestPayload
    extends ListBucketMetricsConfigurationsRequestPayload {
  factory _$ListBucketMetricsConfigurationsRequestPayload(
          [void Function(ListBucketMetricsConfigurationsRequestPayloadBuilder)?
              updates]) =>
      (new ListBucketMetricsConfigurationsRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$ListBucketMetricsConfigurationsRequestPayload._() : super._();

  @override
  ListBucketMetricsConfigurationsRequestPayload rebuild(
          void Function(ListBucketMetricsConfigurationsRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketMetricsConfigurationsRequestPayloadBuilder toBuilder() =>
      new ListBucketMetricsConfigurationsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketMetricsConfigurationsRequestPayload;
  }

  @override
  int get hashCode {
    return 56704902;
  }
}

class ListBucketMetricsConfigurationsRequestPayloadBuilder
    implements
        Builder<ListBucketMetricsConfigurationsRequestPayload,
            ListBucketMetricsConfigurationsRequestPayloadBuilder> {
  _$ListBucketMetricsConfigurationsRequestPayload? _$v;

  ListBucketMetricsConfigurationsRequestPayloadBuilder() {
    ListBucketMetricsConfigurationsRequestPayload._init(this);
  }

  @override
  void replace(ListBucketMetricsConfigurationsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketMetricsConfigurationsRequestPayload;
  }

  @override
  void update(
      void Function(ListBucketMetricsConfigurationsRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketMetricsConfigurationsRequestPayload build() => _build();

  _$ListBucketMetricsConfigurationsRequestPayload _build() {
    final _$result =
        _$v ?? new _$ListBucketMetricsConfigurationsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
