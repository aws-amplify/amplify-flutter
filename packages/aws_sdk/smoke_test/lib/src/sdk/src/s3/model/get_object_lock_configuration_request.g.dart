// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_object_lock_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectLockConfigurationRequest
    extends GetObjectLockConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetObjectLockConfigurationRequest(
          [void Function(GetObjectLockConfigurationRequestBuilder)? updates]) =>
      (new GetObjectLockConfigurationRequestBuilder()..update(updates))
          ._build();

  _$GetObjectLockConfigurationRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectLockConfigurationRequest', 'bucket');
  }

  @override
  GetObjectLockConfigurationRequest rebuild(
          void Function(GetObjectLockConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectLockConfigurationRequestBuilder toBuilder() =>
      new GetObjectLockConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectLockConfigurationRequest &&
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

class GetObjectLockConfigurationRequestBuilder
    implements
        Builder<GetObjectLockConfigurationRequest,
            GetObjectLockConfigurationRequestBuilder> {
  _$GetObjectLockConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetObjectLockConfigurationRequestBuilder() {
    GetObjectLockConfigurationRequest._init(this);
  }

  GetObjectLockConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectLockConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectLockConfigurationRequest;
  }

  @override
  void update(
      void Function(GetObjectLockConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectLockConfigurationRequest build() => _build();

  _$GetObjectLockConfigurationRequest _build() {
    final _$result = _$v ??
        new _$GetObjectLockConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectLockConfigurationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectLockConfigurationRequestPayload
    extends GetObjectLockConfigurationRequestPayload {
  factory _$GetObjectLockConfigurationRequestPayload(
          [void Function(GetObjectLockConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new GetObjectLockConfigurationRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetObjectLockConfigurationRequestPayload._() : super._();

  @override
  GetObjectLockConfigurationRequestPayload rebuild(
          void Function(GetObjectLockConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectLockConfigurationRequestPayloadBuilder toBuilder() =>
      new GetObjectLockConfigurationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectLockConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 89244842;
  }
}

class GetObjectLockConfigurationRequestPayloadBuilder
    implements
        Builder<GetObjectLockConfigurationRequestPayload,
            GetObjectLockConfigurationRequestPayloadBuilder> {
  _$GetObjectLockConfigurationRequestPayload? _$v;

  GetObjectLockConfigurationRequestPayloadBuilder() {
    GetObjectLockConfigurationRequestPayload._init(this);
  }

  @override
  void replace(GetObjectLockConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectLockConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(GetObjectLockConfigurationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectLockConfigurationRequestPayload build() => _build();

  _$GetObjectLockConfigurationRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectLockConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
