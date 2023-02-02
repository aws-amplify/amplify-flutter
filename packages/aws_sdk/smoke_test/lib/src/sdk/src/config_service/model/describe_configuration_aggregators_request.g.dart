// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_configuration_aggregators_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationAggregatorsRequest
    extends DescribeConfigurationAggregatorsRequest {
  @override
  final _i3.BuiltList<String>? configurationAggregatorNames;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$DescribeConfigurationAggregatorsRequest(
          [void Function(DescribeConfigurationAggregatorsRequestBuilder)?
              updates]) =>
      (new DescribeConfigurationAggregatorsRequestBuilder()..update(updates))
          ._build();

  _$DescribeConfigurationAggregatorsRequest._(
      {this.configurationAggregatorNames, this.limit, this.nextToken})
      : super._();

  @override
  DescribeConfigurationAggregatorsRequest rebuild(
          void Function(DescribeConfigurationAggregatorsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigurationAggregatorsRequestBuilder toBuilder() =>
      new DescribeConfigurationAggregatorsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigurationAggregatorsRequest &&
        configurationAggregatorNames == other.configurationAggregatorNames &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorNames.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConfigurationAggregatorsRequestBuilder
    implements
        Builder<DescribeConfigurationAggregatorsRequest,
            DescribeConfigurationAggregatorsRequestBuilder> {
  _$DescribeConfigurationAggregatorsRequest? _$v;

  _i3.ListBuilder<String>? _configurationAggregatorNames;
  _i3.ListBuilder<String> get configurationAggregatorNames =>
      _$this._configurationAggregatorNames ??= new _i3.ListBuilder<String>();
  set configurationAggregatorNames(
          _i3.ListBuilder<String>? configurationAggregatorNames) =>
      _$this._configurationAggregatorNames = configurationAggregatorNames;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConfigurationAggregatorsRequestBuilder() {
    DescribeConfigurationAggregatorsRequest._init(this);
  }

  DescribeConfigurationAggregatorsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorNames =
          $v.configurationAggregatorNames?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigurationAggregatorsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigurationAggregatorsRequest;
  }

  @override
  void update(
      void Function(DescribeConfigurationAggregatorsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigurationAggregatorsRequest build() => _build();

  _$DescribeConfigurationAggregatorsRequest _build() {
    _$DescribeConfigurationAggregatorsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigurationAggregatorsRequest._(
              configurationAggregatorNames:
                  _configurationAggregatorNames?.build(),
              limit: limit,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationAggregatorNames';
        _configurationAggregatorNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigurationAggregatorsRequest',
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
