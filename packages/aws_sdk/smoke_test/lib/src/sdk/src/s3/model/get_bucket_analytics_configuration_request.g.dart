// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_analytics_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketAnalyticsConfigurationRequest
    extends GetBucketAnalyticsConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String id;

  factory _$GetBucketAnalyticsConfigurationRequest(
          [void Function(GetBucketAnalyticsConfigurationRequestBuilder)?
              updates]) =>
      (new GetBucketAnalyticsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$GetBucketAnalyticsConfigurationRequest._(
      {required this.bucket, this.expectedBucketOwner, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketAnalyticsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GetBucketAnalyticsConfigurationRequest', 'id');
  }

  @override
  GetBucketAnalyticsConfigurationRequest rebuild(
          void Function(GetBucketAnalyticsConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAnalyticsConfigurationRequestBuilder toBuilder() =>
      new GetBucketAnalyticsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAnalyticsConfigurationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode),
        id.hashCode));
  }
}

class GetBucketAnalyticsConfigurationRequestBuilder
    implements
        Builder<GetBucketAnalyticsConfigurationRequest,
            GetBucketAnalyticsConfigurationRequestBuilder> {
  _$GetBucketAnalyticsConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GetBucketAnalyticsConfigurationRequestBuilder() {
    GetBucketAnalyticsConfigurationRequest._init(this);
  }

  GetBucketAnalyticsConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketAnalyticsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAnalyticsConfigurationRequest;
  }

  @override
  void update(
      void Function(GetBucketAnalyticsConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAnalyticsConfigurationRequest build() => _build();

  _$GetBucketAnalyticsConfigurationRequest _build() {
    final _$result = _$v ??
        new _$GetBucketAnalyticsConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketAnalyticsConfigurationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GetBucketAnalyticsConfigurationRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketAnalyticsConfigurationRequestPayload
    extends GetBucketAnalyticsConfigurationRequestPayload {
  factory _$GetBucketAnalyticsConfigurationRequestPayload(
          [void Function(GetBucketAnalyticsConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketAnalyticsConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$GetBucketAnalyticsConfigurationRequestPayload._() : super._();

  @override
  GetBucketAnalyticsConfigurationRequestPayload rebuild(
          void Function(GetBucketAnalyticsConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAnalyticsConfigurationRequestPayloadBuilder toBuilder() =>
      new GetBucketAnalyticsConfigurationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAnalyticsConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 89085587;
  }
}

class GetBucketAnalyticsConfigurationRequestPayloadBuilder
    implements
        Builder<GetBucketAnalyticsConfigurationRequestPayload,
            GetBucketAnalyticsConfigurationRequestPayloadBuilder> {
  _$GetBucketAnalyticsConfigurationRequestPayload? _$v;

  GetBucketAnalyticsConfigurationRequestPayloadBuilder() {
    GetBucketAnalyticsConfigurationRequestPayload._init(this);
  }

  @override
  void replace(GetBucketAnalyticsConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAnalyticsConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketAnalyticsConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAnalyticsConfigurationRequestPayload build() => _build();

  _$GetBucketAnalyticsConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$GetBucketAnalyticsConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
