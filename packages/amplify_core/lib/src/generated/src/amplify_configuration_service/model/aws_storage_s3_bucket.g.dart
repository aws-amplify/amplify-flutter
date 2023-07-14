// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_storage_s3_bucket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSStorageS3Bucket extends AWSStorageS3Bucket {
  @override
  final String bucketName;
  @override
  final String region;
  @override
  final _i2.StorageAccessLevel defaultAccessLevel;

  factory _$AWSStorageS3Bucket(
          [void Function(AWSStorageS3BucketBuilder)? updates]) =>
      (new AWSStorageS3BucketBuilder()..update(updates))._build();

  _$AWSStorageS3Bucket._(
      {required this.bucketName,
      required this.region,
      required this.defaultAccessLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucketName, r'AWSStorageS3Bucket', 'bucketName');
    BuiltValueNullFieldError.checkNotNull(
        region, r'AWSStorageS3Bucket', 'region');
    BuiltValueNullFieldError.checkNotNull(
        defaultAccessLevel, r'AWSStorageS3Bucket', 'defaultAccessLevel');
  }

  @override
  AWSStorageS3Bucket rebuild(
          void Function(AWSStorageS3BucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSStorageS3BucketBuilder toBuilder() =>
      new AWSStorageS3BucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSStorageS3Bucket &&
        bucketName == other.bucketName &&
        region == other.region &&
        defaultAccessLevel == other.defaultAccessLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucketName.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, defaultAccessLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSStorageS3BucketBuilder
    implements Builder<AWSStorageS3Bucket, AWSStorageS3BucketBuilder> {
  _$AWSStorageS3Bucket? _$v;

  String? _bucketName;
  String? get bucketName => _$this._bucketName;
  set bucketName(String? bucketName) => _$this._bucketName = bucketName;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  _i2.StorageAccessLevel? _defaultAccessLevel;
  _i2.StorageAccessLevel? get defaultAccessLevel => _$this._defaultAccessLevel;
  set defaultAccessLevel(_i2.StorageAccessLevel? defaultAccessLevel) =>
      _$this._defaultAccessLevel = defaultAccessLevel;

  AWSStorageS3BucketBuilder() {
    AWSStorageS3Bucket._init(this);
  }

  AWSStorageS3BucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucketName = $v.bucketName;
      _region = $v.region;
      _defaultAccessLevel = $v.defaultAccessLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSStorageS3Bucket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSStorageS3Bucket;
  }

  @override
  void update(void Function(AWSStorageS3BucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSStorageS3Bucket build() => _build();

  _$AWSStorageS3Bucket _build() {
    final _$result = _$v ??
        new _$AWSStorageS3Bucket._(
            bucketName: BuiltValueNullFieldError.checkNotNull(
                bucketName, r'AWSStorageS3Bucket', 'bucketName'),
            region: BuiltValueNullFieldError.checkNotNull(
                region, r'AWSStorageS3Bucket', 'region'),
            defaultAccessLevel: BuiltValueNullFieldError.checkNotNull(
                defaultAccessLevel,
                r'AWSStorageS3Bucket',
                'defaultAccessLevel'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
