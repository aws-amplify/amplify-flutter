// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_configuration_aggregator_sources_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationAggregatorSourcesStatusResponse
    extends DescribeConfigurationAggregatorSourcesStatusResponse {
  @override
  final _i3.BuiltList<_i2.AggregatedSourceStatus>? aggregatedSourceStatusList;
  @override
  final String? nextToken;

  factory _$DescribeConfigurationAggregatorSourcesStatusResponse(
          [void Function(
                  DescribeConfigurationAggregatorSourcesStatusResponseBuilder)?
              updates]) =>
      (new DescribeConfigurationAggregatorSourcesStatusResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeConfigurationAggregatorSourcesStatusResponse._(
      {this.aggregatedSourceStatusList, this.nextToken})
      : super._();

  @override
  DescribeConfigurationAggregatorSourcesStatusResponse rebuild(
          void Function(
                  DescribeConfigurationAggregatorSourcesStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigurationAggregatorSourcesStatusResponseBuilder toBuilder() =>
      new DescribeConfigurationAggregatorSourcesStatusResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigurationAggregatorSourcesStatusResponse &&
        aggregatedSourceStatusList == other.aggregatedSourceStatusList &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, aggregatedSourceStatusList.hashCode), nextToken.hashCode));
  }
}

class DescribeConfigurationAggregatorSourcesStatusResponseBuilder
    implements
        Builder<DescribeConfigurationAggregatorSourcesStatusResponse,
            DescribeConfigurationAggregatorSourcesStatusResponseBuilder> {
  _$DescribeConfigurationAggregatorSourcesStatusResponse? _$v;

  _i3.ListBuilder<_i2.AggregatedSourceStatus>? _aggregatedSourceStatusList;
  _i3.ListBuilder<_i2.AggregatedSourceStatus> get aggregatedSourceStatusList =>
      _$this._aggregatedSourceStatusList ??=
          new _i3.ListBuilder<_i2.AggregatedSourceStatus>();
  set aggregatedSourceStatusList(
          _i3.ListBuilder<_i2.AggregatedSourceStatus>?
              aggregatedSourceStatusList) =>
      _$this._aggregatedSourceStatusList = aggregatedSourceStatusList;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConfigurationAggregatorSourcesStatusResponseBuilder() {
    DescribeConfigurationAggregatorSourcesStatusResponse._init(this);
  }

  DescribeConfigurationAggregatorSourcesStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregatedSourceStatusList = $v.aggregatedSourceStatusList?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigurationAggregatorSourcesStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigurationAggregatorSourcesStatusResponse;
  }

  @override
  void update(
      void Function(
              DescribeConfigurationAggregatorSourcesStatusResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigurationAggregatorSourcesStatusResponse build() => _build();

  _$DescribeConfigurationAggregatorSourcesStatusResponse _build() {
    _$DescribeConfigurationAggregatorSourcesStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigurationAggregatorSourcesStatusResponse._(
              aggregatedSourceStatusList: _aggregatedSourceStatusList?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregatedSourceStatusList';
        _aggregatedSourceStatusList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigurationAggregatorSourcesStatusResponse',
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
