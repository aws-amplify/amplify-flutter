// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_metrics_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketMetricsConfigurationRequest
    extends GetBucketMetricsConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String id;

  factory _$GetBucketMetricsConfigurationRequest(
          [void Function(GetBucketMetricsConfigurationRequestBuilder)?
              updates]) =>
      (new GetBucketMetricsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$GetBucketMetricsConfigurationRequest._(
      {required this.bucket, this.expectedBucketOwner, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketMetricsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GetBucketMetricsConfigurationRequest', 'id');
  }

  @override
  GetBucketMetricsConfigurationRequest rebuild(
          void Function(GetBucketMetricsConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketMetricsConfigurationRequestBuilder toBuilder() =>
      new GetBucketMetricsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketMetricsConfigurationRequest &&
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

class GetBucketMetricsConfigurationRequestBuilder
    implements
        Builder<GetBucketMetricsConfigurationRequest,
            GetBucketMetricsConfigurationRequestBuilder> {
  _$GetBucketMetricsConfigurationRequest? _$v;

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

  GetBucketMetricsConfigurationRequestBuilder() {
    GetBucketMetricsConfigurationRequest._init(this);
  }

  GetBucketMetricsConfigurationRequestBuilder get _$this {
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
  void replace(GetBucketMetricsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketMetricsConfigurationRequest;
  }

  @override
  void update(
      void Function(GetBucketMetricsConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketMetricsConfigurationRequest build() => _build();

  _$GetBucketMetricsConfigurationRequest _build() {
    final _$result = _$v ??
        new _$GetBucketMetricsConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketMetricsConfigurationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GetBucketMetricsConfigurationRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketMetricsConfigurationRequestPayload
    extends GetBucketMetricsConfigurationRequestPayload {
  factory _$GetBucketMetricsConfigurationRequestPayload(
          [void Function(GetBucketMetricsConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketMetricsConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$GetBucketMetricsConfigurationRequestPayload._() : super._();

  @override
  GetBucketMetricsConfigurationRequestPayload rebuild(
          void Function(GetBucketMetricsConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketMetricsConfigurationRequestPayloadBuilder toBuilder() =>
      new GetBucketMetricsConfigurationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketMetricsConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 229429382;
  }
}

class GetBucketMetricsConfigurationRequestPayloadBuilder
    implements
        Builder<GetBucketMetricsConfigurationRequestPayload,
            GetBucketMetricsConfigurationRequestPayloadBuilder> {
  _$GetBucketMetricsConfigurationRequestPayload? _$v;

  GetBucketMetricsConfigurationRequestPayloadBuilder() {
    GetBucketMetricsConfigurationRequestPayload._init(this);
  }

  @override
  void replace(GetBucketMetricsConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketMetricsConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketMetricsConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketMetricsConfigurationRequestPayload build() => _build();

  _$GetBucketMetricsConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$GetBucketMetricsConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
