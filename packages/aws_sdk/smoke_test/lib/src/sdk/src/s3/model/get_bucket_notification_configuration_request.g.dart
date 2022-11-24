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
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
