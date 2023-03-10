// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.analytics_export_destination;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticsExportDestination extends AnalyticsExportDestination {
  @override
  final _i2.AnalyticsS3BucketDestination s3BucketDestination;

  factory _$AnalyticsExportDestination(
          [void Function(AnalyticsExportDestinationBuilder)? updates]) =>
      (new AnalyticsExportDestinationBuilder()..update(updates))._build();

  _$AnalyticsExportDestination._({required this.s3BucketDestination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(s3BucketDestination,
        r'AnalyticsExportDestination', 's3BucketDestination');
  }

  @override
  AnalyticsExportDestination rebuild(
          void Function(AnalyticsExportDestinationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticsExportDestinationBuilder toBuilder() =>
      new AnalyticsExportDestinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticsExportDestination &&
        s3BucketDestination == other.s3BucketDestination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3BucketDestination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalyticsExportDestinationBuilder
    implements
        Builder<AnalyticsExportDestination, AnalyticsExportDestinationBuilder> {
  _$AnalyticsExportDestination? _$v;

  _i2.AnalyticsS3BucketDestinationBuilder? _s3BucketDestination;
  _i2.AnalyticsS3BucketDestinationBuilder get s3BucketDestination =>
      _$this._s3BucketDestination ??=
          new _i2.AnalyticsS3BucketDestinationBuilder();
  set s3BucketDestination(
          _i2.AnalyticsS3BucketDestinationBuilder? s3BucketDestination) =>
      _$this._s3BucketDestination = s3BucketDestination;

  AnalyticsExportDestinationBuilder() {
    AnalyticsExportDestination._init(this);
  }

  AnalyticsExportDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3BucketDestination = $v.s3BucketDestination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticsExportDestination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalyticsExportDestination;
  }

  @override
  void update(void Function(AnalyticsExportDestinationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticsExportDestination build() => _build();

  _$AnalyticsExportDestination _build() {
    _$AnalyticsExportDestination _$result;
    try {
      _$result = _$v ??
          new _$AnalyticsExportDestination._(
              s3BucketDestination: s3BucketDestination.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3BucketDestination';
        s3BucketDestination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnalyticsExportDestination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
