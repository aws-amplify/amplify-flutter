// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_configuration_aggregator_sources_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationAggregatorSourcesStatusResponse
    extends DescribeConfigurationAggregatorSourcesStatusResponse {
  @override
  final _i2.BuiltList<AggregatedSourceStatus>? aggregatedSourceStatusList;
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
    var _$hash = 0;
    _$hash = $jc(_$hash, aggregatedSourceStatusList.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConfigurationAggregatorSourcesStatusResponseBuilder
    implements
        Builder<DescribeConfigurationAggregatorSourcesStatusResponse,
            DescribeConfigurationAggregatorSourcesStatusResponseBuilder> {
  _$DescribeConfigurationAggregatorSourcesStatusResponse? _$v;

  _i2.ListBuilder<AggregatedSourceStatus>? _aggregatedSourceStatusList;
  _i2.ListBuilder<AggregatedSourceStatus> get aggregatedSourceStatusList =>
      _$this._aggregatedSourceStatusList ??=
          new _i2.ListBuilder<AggregatedSourceStatus>();
  set aggregatedSourceStatusList(
          _i2.ListBuilder<AggregatedSourceStatus>?
              aggregatedSourceStatusList) =>
      _$this._aggregatedSourceStatusList = aggregatedSourceStatusList;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConfigurationAggregatorSourcesStatusResponseBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
