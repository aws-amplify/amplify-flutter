// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.s3_bucket_source;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3BucketSource extends S3BucketSource {
  @override
  final String s3Bucket;
  @override
  final String? s3BucketOwner;
  @override
  final String? s3KeyPrefix;

  factory _$S3BucketSource([void Function(S3BucketSourceBuilder)? updates]) =>
      (new S3BucketSourceBuilder()..update(updates))._build();

  _$S3BucketSource._(
      {required this.s3Bucket, this.s3BucketOwner, this.s3KeyPrefix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        s3Bucket, r'S3BucketSource', 's3Bucket');
  }

  @override
  S3BucketSource rebuild(void Function(S3BucketSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3BucketSourceBuilder toBuilder() =>
      new S3BucketSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3BucketSource &&
        s3Bucket == other.s3Bucket &&
        s3BucketOwner == other.s3BucketOwner &&
        s3KeyPrefix == other.s3KeyPrefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3Bucket.hashCode);
    _$hash = $jc(_$hash, s3BucketOwner.hashCode);
    _$hash = $jc(_$hash, s3KeyPrefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class S3BucketSourceBuilder
    implements Builder<S3BucketSource, S3BucketSourceBuilder> {
  _$S3BucketSource? _$v;

  String? _s3Bucket;
  String? get s3Bucket => _$this._s3Bucket;
  set s3Bucket(String? s3Bucket) => _$this._s3Bucket = s3Bucket;

  String? _s3BucketOwner;
  String? get s3BucketOwner => _$this._s3BucketOwner;
  set s3BucketOwner(String? s3BucketOwner) =>
      _$this._s3BucketOwner = s3BucketOwner;

  String? _s3KeyPrefix;
  String? get s3KeyPrefix => _$this._s3KeyPrefix;
  set s3KeyPrefix(String? s3KeyPrefix) => _$this._s3KeyPrefix = s3KeyPrefix;

  S3BucketSourceBuilder() {
    S3BucketSource._init(this);
  }

  S3BucketSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3Bucket = $v.s3Bucket;
      _s3BucketOwner = $v.s3BucketOwner;
      _s3KeyPrefix = $v.s3KeyPrefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3BucketSource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3BucketSource;
  }

  @override
  void update(void Function(S3BucketSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3BucketSource build() => _build();

  _$S3BucketSource _build() {
    final _$result = _$v ??
        new _$S3BucketSource._(
            s3Bucket: BuiltValueNullFieldError.checkNotNull(
                s3Bucket, r'S3BucketSource', 's3Bucket'),
            s3BucketOwner: s3BucketOwner,
            s3KeyPrefix: s3KeyPrefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
