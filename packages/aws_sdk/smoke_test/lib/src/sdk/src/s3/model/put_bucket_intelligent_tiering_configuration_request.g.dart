// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_intelligent_tiering_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketIntelligentTieringConfigurationRequest
    extends PutBucketIntelligentTieringConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;
  @override
  final _i2.IntelligentTieringConfiguration intelligentTieringConfiguration;

  factory _$PutBucketIntelligentTieringConfigurationRequest(
          [void Function(
                  PutBucketIntelligentTieringConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketIntelligentTieringConfigurationRequestBuilder()
            ..update(updates))
          ._build();

  _$PutBucketIntelligentTieringConfigurationRequest._(
      {required this.bucket,
      required this.id,
      required this.intelligentTieringConfiguration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketIntelligentTieringConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'PutBucketIntelligentTieringConfigurationRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        intelligentTieringConfiguration,
        r'PutBucketIntelligentTieringConfigurationRequest',
        'intelligentTieringConfiguration');
  }

  @override
  PutBucketIntelligentTieringConfigurationRequest rebuild(
          void Function(PutBucketIntelligentTieringConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketIntelligentTieringConfigurationRequestBuilder toBuilder() =>
      new PutBucketIntelligentTieringConfigurationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketIntelligentTieringConfigurationRequest &&
        bucket == other.bucket &&
        id == other.id &&
        intelligentTieringConfiguration ==
            other.intelligentTieringConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, intelligentTieringConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketIntelligentTieringConfigurationRequestBuilder
    implements
        Builder<PutBucketIntelligentTieringConfigurationRequest,
            PutBucketIntelligentTieringConfigurationRequestBuilder> {
  _$PutBucketIntelligentTieringConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.IntelligentTieringConfigurationBuilder? _intelligentTieringConfiguration;
  _i2.IntelligentTieringConfigurationBuilder
      get intelligentTieringConfiguration =>
          _$this._intelligentTieringConfiguration ??=
              new _i2.IntelligentTieringConfigurationBuilder();
  set intelligentTieringConfiguration(
          _i2.IntelligentTieringConfigurationBuilder?
              intelligentTieringConfiguration) =>
      _$this._intelligentTieringConfiguration = intelligentTieringConfiguration;

  PutBucketIntelligentTieringConfigurationRequestBuilder() {
    PutBucketIntelligentTieringConfigurationRequest._init(this);
  }

  PutBucketIntelligentTieringConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _intelligentTieringConfiguration =
          $v.intelligentTieringConfiguration.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketIntelligentTieringConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketIntelligentTieringConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketIntelligentTieringConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketIntelligentTieringConfigurationRequest build() => _build();

  _$PutBucketIntelligentTieringConfigurationRequest _build() {
    _$PutBucketIntelligentTieringConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketIntelligentTieringConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(bucket,
                  r'PutBucketIntelligentTieringConfigurationRequest', 'bucket'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PutBucketIntelligentTieringConfigurationRequest', 'id'),
              intelligentTieringConfiguration:
                  intelligentTieringConfiguration.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'intelligentTieringConfiguration';
        intelligentTieringConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketIntelligentTieringConfigurationRequest',
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
