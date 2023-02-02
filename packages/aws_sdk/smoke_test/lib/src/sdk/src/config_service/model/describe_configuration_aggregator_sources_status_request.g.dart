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
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, updateStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
