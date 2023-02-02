// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_analytics_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketAnalyticsConfigurationOutput
    extends GetBucketAnalyticsConfigurationOutput {
  @override
  final _i3.AnalyticsConfiguration? analyticsConfiguration;

  factory _$GetBucketAnalyticsConfigurationOutput(
          [void Function(GetBucketAnalyticsConfigurationOutputBuilder)?
              updates]) =>
      (new GetBucketAnalyticsConfigurationOutputBuilder()..update(updates))
          ._build();

  _$GetBucketAnalyticsConfigurationOutput._({this.analyticsConfiguration})
      : super._();

  @override
  GetBucketAnalyticsConfigurationOutput rebuild(
          void Function(GetBucketAnalyticsConfigurationOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketAnalyticsConfigurationOutputBuilder toBuilder() =>
      new GetBucketAnalyticsConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketAnalyticsConfigurationOutput &&
        analyticsConfiguration == other.analyticsConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, analyticsConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketAnalyticsConfigurationOutputBuilder
    implements
        Builder<GetBucketAnalyticsConfigurationOutput,
            GetBucketAnalyticsConfigurationOutputBuilder> {
  _$GetBucketAnalyticsConfigurationOutput? _$v;

  _i3.AnalyticsConfigurationBuilder? _analyticsConfiguration;
  _i3.AnalyticsConfigurationBuilder get analyticsConfiguration =>
      _$this._analyticsConfiguration ??=
          new _i3.AnalyticsConfigurationBuilder();
  set analyticsConfiguration(
          _i3.AnalyticsConfigurationBuilder? analyticsConfiguration) =>
      _$this._analyticsConfiguration = analyticsConfiguration;

  GetBucketAnalyticsConfigurationOutputBuilder() {
    GetBucketAnalyticsConfigurationOutput._init(this);
  }

  GetBucketAnalyticsConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analyticsConfiguration = $v.analyticsConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketAnalyticsConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketAnalyticsConfigurationOutput;
  }

  @override
  void update(
      void Function(GetBucketAnalyticsConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketAnalyticsConfigurationOutput build() => _build();

  _$GetBucketAnalyticsConfigurationOutput _build() {
    _$GetBucketAnalyticsConfigurationOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketAnalyticsConfigurationOutput._(
              analyticsConfiguration: _analyticsConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'analyticsConfiguration';
        _analyticsConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketAnalyticsConfigurationOutput',
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
