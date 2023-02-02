// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_notification_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketNotificationConfigurationRequest
    extends PutBucketNotificationConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final _i2.NotificationConfiguration notificationConfiguration;
  @override
  final bool? skipDestinationValidation;

  factory _$PutBucketNotificationConfigurationRequest(
          [void Function(PutBucketNotificationConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketNotificationConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketNotificationConfigurationRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.notificationConfiguration,
      this.skipDestinationValidation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketNotificationConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        notificationConfiguration,
        r'PutBucketNotificationConfigurationRequest',
        'notificationConfiguration');
  }

  @override
  PutBucketNotificationConfigurationRequest rebuild(
          void Function(PutBucketNotificationConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketNotificationConfigurationRequestBuilder toBuilder() =>
      new PutBucketNotificationConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketNotificationConfigurationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        notificationConfiguration == other.notificationConfiguration &&
        skipDestinationValidation == other.skipDestinationValidation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, notificationConfiguration.hashCode);
    _$hash = $jc(_$hash, skipDestinationValidation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketNotificationConfigurationRequestBuilder
    implements
        Builder<PutBucketNotificationConfigurationRequest,
            PutBucketNotificationConfigurationRequestBuilder> {
  _$PutBucketNotificationConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  _i2.NotificationConfigurationBuilder? _notificationConfiguration;
  _i2.NotificationConfigurationBuilder get notificationConfiguration =>
      _$this._notificationConfiguration ??=
          new _i2.NotificationConfigurationBuilder();
  set notificationConfiguration(
          _i2.NotificationConfigurationBuilder? notificationConfiguration) =>
      _$this._notificationConfiguration = notificationConfiguration;

  bool? _skipDestinationValidation;
  bool? get skipDestinationValidation => _$this._skipDestinationValidation;
  set skipDestinationValidation(bool? skipDestinationValidation) =>
      _$this._skipDestinationValidation = skipDestinationValidation;

  PutBucketNotificationConfigurationRequestBuilder() {
    PutBucketNotificationConfigurationRequest._init(this);
  }

  PutBucketNotificationConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _notificationConfiguration = $v.notificationConfiguration.toBuilder();
      _skipDestinationValidation = $v.skipDestinationValidation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketNotificationConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketNotificationConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketNotificationConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketNotificationConfigurationRequest build() => _build();

  _$PutBucketNotificationConfigurationRequest _build() {
    _$PutBucketNotificationConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketNotificationConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(bucket,
                  r'PutBucketNotificationConfigurationRequest', 'bucket'),
              expectedBucketOwner: expectedBucketOwner,
              notificationConfiguration: notificationConfiguration.build(),
              skipDestinationValidation: skipDestinationValidation);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notificationConfiguration';
        notificationConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketNotificationConfigurationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
