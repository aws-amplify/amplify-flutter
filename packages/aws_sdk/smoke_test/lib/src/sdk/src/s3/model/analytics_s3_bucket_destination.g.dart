// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.analytics_s3_bucket_destination;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticsS3BucketDestination extends AnalyticsS3BucketDestination {
  @override
  final String bucket;
  @override
  final String? bucketAccountId;
  @override
  final _i2.AnalyticsS3ExportFileFormat format;
  @override
  final String? prefix;

  factory _$AnalyticsS3BucketDestination(
          [void Function(AnalyticsS3BucketDestinationBuilder)? updates]) =>
      (new AnalyticsS3BucketDestinationBuilder()..update(updates))._build();

  _$AnalyticsS3BucketDestination._(
      {required this.bucket,
      this.bucketAccountId,
      required this.format,
      this.prefix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'AnalyticsS3BucketDestination', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        format, r'AnalyticsS3BucketDestination', 'format');
  }

  @override
  AnalyticsS3BucketDestination rebuild(
          void Function(AnalyticsS3BucketDestinationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticsS3BucketDestinationBuilder toBuilder() =>
      new AnalyticsS3BucketDestinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticsS3BucketDestination &&
        bucket == other.bucket &&
        bucketAccountId == other.bucketAccountId &&
        format == other.format &&
        prefix == other.prefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, bucketAccountId.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalyticsS3BucketDestinationBuilder
    implements
        Builder<AnalyticsS3BucketDestination,
            AnalyticsS3BucketDestinationBuilder> {
  _$AnalyticsS3BucketDestination? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _bucketAccountId;
  String? get bucketAccountId => _$this._bucketAccountId;
  set bucketAccountId(String? bucketAccountId) =>
      _$this._bucketAccountId = bucketAccountId;

  _i2.AnalyticsS3ExportFileFormat? _format;
  _i2.AnalyticsS3ExportFileFormat? get format => _$this._format;
  set format(_i2.AnalyticsS3ExportFileFormat? format) =>
      _$this._format = format;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  AnalyticsS3BucketDestinationBuilder() {
    AnalyticsS3BucketDestination._init(this);
  }

  AnalyticsS3BucketDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _bucketAccountId = $v.bucketAccountId;
      _format = $v.format;
      _prefix = $v.prefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticsS3BucketDestination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalyticsS3BucketDestination;
  }

  @override
  void update(void Function(AnalyticsS3BucketDestinationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticsS3BucketDestination build() => _build();

  _$AnalyticsS3BucketDestination _build() {
    final _$result = _$v ??
        new _$AnalyticsS3BucketDestination._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'AnalyticsS3BucketDestination', 'bucket'),
            bucketAccountId: bucketAccountId,
            format: BuiltValueNullFieldError.checkNotNull(
                format, r'AnalyticsS3BucketDestination', 'format'),
            prefix: prefix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
