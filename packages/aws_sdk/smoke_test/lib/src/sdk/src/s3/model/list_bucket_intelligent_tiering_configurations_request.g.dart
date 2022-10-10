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
    return $jf($jc($jc(0, bucket.hashCode), continuationToken.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
