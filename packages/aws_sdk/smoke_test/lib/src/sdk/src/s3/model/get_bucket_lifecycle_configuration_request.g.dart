// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_lifecycle_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLifecycleConfigurationRequest
    extends GetBucketLifecycleConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketLifecycleConfigurationRequest(
          [void Function(GetBucketLifecycleConfigurationRequestBuilder)?
              updates]) =>
      (new GetBucketLifecycleConfigurationRequestBuilder()..update(updates))
          ._build();

  _$GetBucketLifecycleConfigurationRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketLifecycleConfigurationRequest', 'bucket');
  }

  @override
  GetBucketLifecycleConfigurationRequest rebuild(
          void Function(GetBucketLifecycleConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLifecycleConfigurationRequestBuilder toBuilder() =>
      new GetBucketLifecycleConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLifecycleConfigurationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketLifecycleConfigurationRequestBuilder
    implements
        Builder<GetBucketLifecycleConfigurationRequest,
            GetBucketLifecycleConfigurationRequestBuilder> {
  _$GetBucketLifecycleConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketLifecycleConfigurationRequestBuilder() {
    GetBucketLifecycleConfigurationRequest._init(this);
  }

  GetBucketLifecycleConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketLifecycleConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLifecycleConfigurationRequest;
  }

  @override
  void update(
      void Function(GetBucketLifecycleConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLifecycleConfigurationRequest build() => _build();

  _$GetBucketLifecycleConfigurationRequest _build() {
    final _$result = _$v ??
        new _$GetBucketLifecycleConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketLifecycleConfigurationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketLifecycleConfigurationRequestPayload
    extends GetBucketLifecycleConfigurationRequestPayload {
  factory _$GetBucketLifecycleConfigurationRequestPayload(
          [void Function(GetBucketLifecycleConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketLifecycleConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$GetBucketLifecycleConfigurationRequestPayload._() : super._();

  @override
  GetBucketLifecycleConfigurationRequestPayload rebuild(
          void Function(GetBucketLifecycleConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLifecycleConfigurationRequestPayloadBuilder toBuilder() =>
      new GetBucketLifecycleConfigurationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLifecycleConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 496568631;
  }
}

class GetBucketLifecycleConfigurationRequestPayloadBuilder
    implements
        Builder<GetBucketLifecycleConfigurationRequestPayload,
            GetBucketLifecycleConfigurationRequestPayloadBuilder> {
  _$GetBucketLifecycleConfigurationRequestPayload? _$v;

  GetBucketLifecycleConfigurationRequestPayloadBuilder() {
    GetBucketLifecycleConfigurationRequestPayload._init(this);
  }

  @override
  void replace(GetBucketLifecycleConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLifecycleConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketLifecycleConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLifecycleConfigurationRequestPayload build() => _build();

  _$GetBucketLifecycleConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$GetBucketLifecycleConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
