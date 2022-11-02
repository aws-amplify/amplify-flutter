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
    return $jf($jc(0, analyticsConfiguration.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
