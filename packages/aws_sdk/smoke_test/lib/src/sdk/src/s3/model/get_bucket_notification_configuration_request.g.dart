// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_notification_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketNotificationConfigurationRequest
    extends GetBucketNotificationConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketNotificationConfigurationRequest(
          [void Function(GetBucketNotificationConfigurationRequestBuilder)?
              updates]) =>
      (new GetBucketNotificationConfigurationRequestBuilder()..update(updates))
          ._build();

  _$GetBucketNotificationConfigurationRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketNotificationConfigurationRequest', 'bucket');
  }

  @override
  GetBucketNotificationConfigurationRequest rebuild(
          void Function(GetBucketNotificationConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketNotificationConfigurationRequestBuilder toBuilder() =>
      new GetBucketNotificationConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketNotificationConfigurationRequest &&
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

class GetBucketNotificationConfigurationRequestBuilder
    implements
        Builder<GetBucketNotificationConfigurationRequest,
            GetBucketNotificationConfigurationRequestBuilder> {
  _$GetBucketNotificationConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketNotificationConfigurationRequestBuilder() {
    GetBucketNotificationConfigurationRequest._init(this);
  }

  GetBucketNotificationConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketNotificationConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketNotificationConfigurationRequest;
  }

  @override
  void update(
      void Function(GetBucketNotificationConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketNotificationConfigurationRequest build() => _build();

  _$GetBucketNotificationConfigurationRequest _build() {
    final _$result = _$v ??
        new _$GetBucketNotificationConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketNotificationConfigurationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketNotificationConfigurationRequestPayload
    extends GetBucketNotificationConfigurationRequestPayload {
  factory _$GetBucketNotificationConfigurationRequestPayload(
          [void Function(
                  GetBucketNotificationConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketNotificationConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$GetBucketNotificationConfigurationRequestPayload._() : super._();

  @override
  GetBucketNotificationConfigurationRequestPayload rebuild(
          void Function(GetBucketNotificationConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketNotificationConfigurationRequestPayloadBuilder toBuilder() =>
      new GetBucketNotificationConfigurationRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketNotificationConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 707122013;
  }
}

class GetBucketNotificationConfigurationRequestPayloadBuilder
    implements
        Builder<GetBucketNotificationConfigurationRequestPayload,
            GetBucketNotificationConfigurationRequestPayloadBuilder> {
  _$GetBucketNotificationConfigurationRequestPayload? _$v;

  GetBucketNotificationConfigurationRequestPayloadBuilder() {
    GetBucketNotificationConfigurationRequestPayload._init(this);
  }

  @override
  void replace(GetBucketNotificationConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketNotificationConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketNotificationConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketNotificationConfigurationRequestPayload build() => _build();

  _$GetBucketNotificationConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$GetBucketNotificationConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
