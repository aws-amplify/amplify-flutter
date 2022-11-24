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
    return $jf($jc($jc($jc(0, bucket.hashCode), id.hashCode),
        intelligentTieringConfiguration.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
