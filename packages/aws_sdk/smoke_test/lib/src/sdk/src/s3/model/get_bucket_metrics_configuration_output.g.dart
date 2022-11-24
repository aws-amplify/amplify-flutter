// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_metrics_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketMetricsConfigurationOutput
    extends GetBucketMetricsConfigurationOutput {
  @override
  final _i3.MetricsConfiguration? metricsConfiguration;

  factory _$GetBucketMetricsConfigurationOutput(
          [void Function(GetBucketMetricsConfigurationOutputBuilder)?
              updates]) =>
      (new GetBucketMetricsConfigurationOutputBuilder()..update(updates))
          ._build();

  _$GetBucketMetricsConfigurationOutput._({this.metricsConfiguration})
      : super._();

  @override
  GetBucketMetricsConfigurationOutput rebuild(
          void Function(GetBucketMetricsConfigurationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketMetricsConfigurationOutputBuilder toBuilder() =>
      new GetBucketMetricsConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketMetricsConfigurationOutput &&
        metricsConfiguration == other.metricsConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc(0, metricsConfiguration.hashCode));
  }
}

class GetBucketMetricsConfigurationOutputBuilder
    implements
        Builder<GetBucketMetricsConfigurationOutput,
            GetBucketMetricsConfigurationOutputBuilder> {
  _$GetBucketMetricsConfigurationOutput? _$v;

  _i3.MetricsConfigurationBuilder? _metricsConfiguration;
  _i3.MetricsConfigurationBuilder get metricsConfiguration =>
      _$this._metricsConfiguration ??= new _i3.MetricsConfigurationBuilder();
  set metricsConfiguration(
          _i3.MetricsConfigurationBuilder? metricsConfiguration) =>
      _$this._metricsConfiguration = metricsConfiguration;

  GetBucketMetricsConfigurationOutputBuilder() {
    GetBucketMetricsConfigurationOutput._init(this);
  }

  GetBucketMetricsConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metricsConfiguration = $v.metricsConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketMetricsConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketMetricsConfigurationOutput;
  }

  @override
  void update(
      void Function(GetBucketMetricsConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketMetricsConfigurationOutput build() => _build();

  _$GetBucketMetricsConfigurationOutput _build() {
    _$GetBucketMetricsConfigurationOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketMetricsConfigurationOutput._(
              metricsConfiguration: _metricsConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metricsConfiguration';
        _metricsConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketMetricsConfigurationOutput',
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
