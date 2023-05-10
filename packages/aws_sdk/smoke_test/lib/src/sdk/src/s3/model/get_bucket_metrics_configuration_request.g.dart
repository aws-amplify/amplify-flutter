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
  final String id;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketMetricsConfigurationRequest(
          [void Function(GetBucketMetricsConfigurationRequestBuilder)?
              updates]) =>
      (new GetBucketMetricsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$GetBucketMetricsConfigurationRequest._(
      {required this.bucket, required this.id, this.expectedBucketOwner})
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

class GetBucketMetricsConfigurationRequestBuilder
    implements
        Builder<GetBucketMetricsConfigurationRequest,
            GetBucketMetricsConfigurationRequestBuilder> {
  _$GetBucketMetricsConfigurationRequest? _$v;

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

  GetBucketMetricsConfigurationRequestBuilder() {
    GetBucketMetricsConfigurationRequest._init(this);
  }

  GetBucketMetricsConfigurationRequestBuilder get _$this {
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
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GetBucketMetricsConfigurationRequest', 'id'),
            expectedBucketOwner: expectedBucketOwner);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
