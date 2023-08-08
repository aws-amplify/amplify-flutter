// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_configuration_aggregators_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationAggregatorsRequest
    extends DescribeConfigurationAggregatorsRequest {
  @override
  final _i3.BuiltList<String>? configurationAggregatorNames;
  @override
  final String? nextToken;
  @override
  final int limit;

  factory _$DescribeConfigurationAggregatorsRequest(
          [void Function(DescribeConfigurationAggregatorsRequestBuilder)?
              updates]) =>
      (new DescribeConfigurationAggregatorsRequestBuilder()..update(updates))
          ._build();

  _$DescribeConfigurationAggregatorsRequest._(
      {this.configurationAggregatorNames, this.nextToken, required this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeConfigurationAggregatorsRequest', 'limit');
  }

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
        nextToken == other.nextToken &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorNames.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
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

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  DescribeConfigurationAggregatorsRequestBuilder() {
    DescribeConfigurationAggregatorsRequest._init(this);
  }

  DescribeConfigurationAggregatorsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorNames =
          $v.configurationAggregatorNames?.toBuilder();
      _nextToken = $v.nextToken;
      _limit = $v.limit;
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
              nextToken: nextToken,
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'DescribeConfigurationAggregatorsRequest', 'limit'));
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
