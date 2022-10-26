// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_configuration_aggregators_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationAggregatorsResponse
    extends DescribeConfigurationAggregatorsResponse {
  @override
  final _i3.BuiltList<_i2.ConfigurationAggregator>? configurationAggregators;
  @override
  final String? nextToken;

  factory _$DescribeConfigurationAggregatorsResponse(
          [void Function(DescribeConfigurationAggregatorsResponseBuilder)?
              updates]) =>
      (new DescribeConfigurationAggregatorsResponseBuilder()..update(updates))
          ._build();

  _$DescribeConfigurationAggregatorsResponse._(
      {this.configurationAggregators, this.nextToken})
      : super._();

  @override
  DescribeConfigurationAggregatorsResponse rebuild(
          void Function(DescribeConfigurationAggregatorsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigurationAggregatorsResponseBuilder toBuilder() =>
      new DescribeConfigurationAggregatorsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigurationAggregatorsResponse &&
        configurationAggregators == other.configurationAggregators &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, configurationAggregators.hashCode), nextToken.hashCode));
  }
}

class DescribeConfigurationAggregatorsResponseBuilder
    implements
        Builder<DescribeConfigurationAggregatorsResponse,
            DescribeConfigurationAggregatorsResponseBuilder> {
  _$DescribeConfigurationAggregatorsResponse? _$v;

  _i3.ListBuilder<_i2.ConfigurationAggregator>? _configurationAggregators;
  _i3.ListBuilder<_i2.ConfigurationAggregator> get configurationAggregators =>
      _$this._configurationAggregators ??=
          new _i3.ListBuilder<_i2.ConfigurationAggregator>();
  set configurationAggregators(
          _i3.ListBuilder<_i2.ConfigurationAggregator>?
              configurationAggregators) =>
      _$this._configurationAggregators = configurationAggregators;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConfigurationAggregatorsResponseBuilder() {
    DescribeConfigurationAggregatorsResponse._init(this);
  }

  DescribeConfigurationAggregatorsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregators = $v.configurationAggregators?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigurationAggregatorsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigurationAggregatorsResponse;
  }

  @override
  void update(
      void Function(DescribeConfigurationAggregatorsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigurationAggregatorsResponse build() => _build();

  _$DescribeConfigurationAggregatorsResponse _build() {
    _$DescribeConfigurationAggregatorsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigurationAggregatorsResponse._(
              configurationAggregators: _configurationAggregators?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationAggregators';
        _configurationAggregators?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigurationAggregatorsResponse',
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
