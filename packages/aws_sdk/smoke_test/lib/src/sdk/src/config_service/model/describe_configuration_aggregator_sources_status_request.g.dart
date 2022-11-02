// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_configuration_aggregator_sources_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationAggregatorSourcesStatusRequest
    extends DescribeConfigurationAggregatorSourcesStatusRequest {
  @override
  final String configurationAggregatorName;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<_i3.AggregatedSourceStatusType>? updateStatus;

  factory _$DescribeConfigurationAggregatorSourcesStatusRequest(
          [void Function(
                  DescribeConfigurationAggregatorSourcesStatusRequestBuilder)?
              updates]) =>
      (new DescribeConfigurationAggregatorSourcesStatusRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeConfigurationAggregatorSourcesStatusRequest._(
      {required this.configurationAggregatorName,
      this.limit,
      this.nextToken,
      this.updateStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'DescribeConfigurationAggregatorSourcesStatusRequest',
        'configurationAggregatorName');
  }

  @override
  DescribeConfigurationAggregatorSourcesStatusRequest rebuild(
          void Function(
                  DescribeConfigurationAggregatorSourcesStatusRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigurationAggregatorSourcesStatusRequestBuilder toBuilder() =>
      new DescribeConfigurationAggregatorSourcesStatusRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigurationAggregatorSourcesStatusRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        updateStatus == other.updateStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, configurationAggregatorName.hashCode), limit.hashCode),
            nextToken.hashCode),
        updateStatus.hashCode));
  }
}

class DescribeConfigurationAggregatorSourcesStatusRequestBuilder
    implements
        Builder<DescribeConfigurationAggregatorSourcesStatusRequest,
            DescribeConfigurationAggregatorSourcesStatusRequestBuilder> {
  _$DescribeConfigurationAggregatorSourcesStatusRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ListBuilder<_i3.AggregatedSourceStatusType>? _updateStatus;
  _i4.ListBuilder<_i3.AggregatedSourceStatusType> get updateStatus =>
      _$this._updateStatus ??=
          new _i4.ListBuilder<_i3.AggregatedSourceStatusType>();
  set updateStatus(
          _i4.ListBuilder<_i3.AggregatedSourceStatusType>? updateStatus) =>
      _$this._updateStatus = updateStatus;

  DescribeConfigurationAggregatorSourcesStatusRequestBuilder() {
    DescribeConfigurationAggregatorSourcesStatusRequest._init(this);
  }

  DescribeConfigurationAggregatorSourcesStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _updateStatus = $v.updateStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigurationAggregatorSourcesStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigurationAggregatorSourcesStatusRequest;
  }

  @override
  void update(
      void Function(DescribeConfigurationAggregatorSourcesStatusRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigurationAggregatorSourcesStatusRequest build() => _build();

  _$DescribeConfigurationAggregatorSourcesStatusRequest _build() {
    _$DescribeConfigurationAggregatorSourcesStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigurationAggregatorSourcesStatusRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'DescribeConfigurationAggregatorSourcesStatusRequest',
                      'configurationAggregatorName'),
              limit: limit,
              nextToken: nextToken,
              updateStatus: _updateStatus?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateStatus';
        _updateStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigurationAggregatorSourcesStatusRequest',
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
