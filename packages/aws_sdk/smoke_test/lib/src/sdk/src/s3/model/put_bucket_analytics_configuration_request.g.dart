// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_analytics_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketAnalyticsConfigurationRequest
    extends PutBucketAnalyticsConfigurationRequest {
  @override
  final _i2.AnalyticsConfiguration analyticsConfiguration;
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String id;

  factory _$PutBucketAnalyticsConfigurationRequest(
          [void Function(PutBucketAnalyticsConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketAnalyticsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketAnalyticsConfigurationRequest._(
      {required this.analyticsConfiguration,
      required this.bucket,
      this.expectedBucketOwner,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(analyticsConfiguration,
        r'PutBucketAnalyticsConfigurationRequest', 'analyticsConfiguration');
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketAnalyticsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'PutBucketAnalyticsConfigurationRequest', 'id');
  }

  @override
  PutBucketAnalyticsConfigurationRequest rebuild(
          void Function(PutBucketAnalyticsConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketAnalyticsConfigurationRequestBuilder toBuilder() =>
      new PutBucketAnalyticsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketAnalyticsConfigurationRequest &&
        analyticsConfiguration == other.analyticsConfiguration &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, analyticsConfiguration.hashCode), bucket.hashCode),
            expectedBucketOwner.hashCode),
        id.hashCode));
  }
}

class PutBucketAnalyticsConfigurationRequestBuilder
    implements
        Builder<PutBucketAnalyticsConfigurationRequest,
            PutBucketAnalyticsConfigurationRequestBuilder> {
  _$PutBucketAnalyticsConfigurationRequest? _$v;

  _i2.AnalyticsConfigurationBuilder? _analyticsConfiguration;
  _i2.AnalyticsConfigurationBuilder get analyticsConfiguration =>
      _$this._analyticsConfiguration ??=
          new _i2.AnalyticsConfigurationBuilder();
  set analyticsConfiguration(
          _i2.AnalyticsConfigurationBuilder? analyticsConfiguration) =>
      _$this._analyticsConfiguration = analyticsConfiguration;

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

  PutBucketAnalyticsConfigurationRequestBuilder() {
    PutBucketAnalyticsConfigurationRequest._init(this);
  }

  PutBucketAnalyticsConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analyticsConfiguration = $v.analyticsConfiguration.toBuilder();
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketAnalyticsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketAnalyticsConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketAnalyticsConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketAnalyticsConfigurationRequest build() => _build();

  _$PutBucketAnalyticsConfigurationRequest _build() {
    _$PutBucketAnalyticsConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketAnalyticsConfigurationRequest._(
              analyticsConfiguration: analyticsConfiguration.build(),
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketAnalyticsConfigurationRequest', 'bucket'),
              expectedBucketOwner: expectedBucketOwner,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PutBucketAnalyticsConfigurationRequest', 'id'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsConfiguration';
        analyticsConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketAnalyticsConfigurationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
